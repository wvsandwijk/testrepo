[cmdletbinding()]
Param (
    [Switch]$ThisMonth,
    [Switch]$ShowFile,
    [Switch]$Final
)

#region Functions
    function Get-UserID {
        param (
            $SID
        )
            $GUIDADobj = New-Object System.Security.Principal.SecurityIdentifier("$SID")
            $GUIDName = $GUIDADObj.Translate([System.Security.Principal.NTAccount])
            $output = $GUIDName.Value

        Write-verbose "[Get-UserID] $output" -Verbose
        return $Output
        }

    function Set-Result {
    param (
        $TimeCreated,$ID,$LevelDisplayName,$Message,$SID
    )

    $SOutput = @{
                    TimeCreated = $TimeCreated
                    ID = $ID
                    LevelDisplayName = $LevelDisplayName
                    Message = $Message
                    #UserID = Get-UserID -SID $SID
                }

    $result = New-Object psobject -Property $SOutput
    Write-Verbose "[Set-Result] $SID" -Verbose
    $SID = $null
    return $Result
    }
#endregion Functions

#region Script parameters
    #$ThisMonth      = $true
    #$Debug          = $false
    #$ShowFile       = $true
    #$Final          = $false

    if ($Debug) {
        Write-Warning "[DEBUG] Enabled"
        $DebugPath      = "c:\temp\Debug"
        if (!(Get-Item $DebugPath -ErrorAction SilentlyContinue)){
            Write-Output " Creating Debug Folder"
            New-item $DebugPath -ItemType Directory
        }
    }
    $UserName       = $env:username
    $FullName       = ([ADSI]"WinNT://$env:USERDNSDOMAIN/$env:USERNAME,user").Fullname
    $LogonID        = '7001'
    $LogoffID       = '7002'
    $Events         = @($logonid,$logoffid)
    $StartThisMonth = Get-date -day 1 -Hour 0 -Minute 0 -Second 0 -Millisecond 0

    switch ($ThisMonth) {
        $false  {
                    $strDate = @{
                        Start = $StartThisMonth.AddMonths(-1)
                        Stop = $StartThisMonth
                    }
                    Write-Verbose "Calculating Last month" -Verbose
                }
        default   {
                    $strDate = @{
                        Start = $StartThisMonth
                        Stop = $StartThisMonth.AddMonths(1).AddMilliseconds(-1)
                    }
                    Write-Verbose "Calculating this month" -Verbose
                }
    }

    switch ($Final) {
        $true   {
                    $Month = $(Get-Date $($strDate.start) -f "yyMM-MMMM")
                    $MonthName = "$($Month)_Final"
                    $SavePath = "$psscriptroot\Final"
                    Write-verbose "Processing the finalversion of $MonthName" -Verbose
                }
        default {
                    $Month = $(Get-Date $($strDate.start) -f "yyMM-MMMM")
                    $MonthName = "$($Month)_$(Get-Date -f "dd_HHmmss")"
                    #$SavePath = $psscriptroot
                    $savePath = "C:\Users\sandwijkw\OneDrive - Raboweb\Scripts\Uren"
                }
    }

    $TotalDays      = (New-TimeSpan -Start $strDate.Start -end $strDate.Stop).totaldays
    $Head           = @("
    <style type= `"text/css`">
    body{font-family: verdana;font-size: 8pt;}
    table{border: 1px solid black; border-collapse: collapse;}
    th{border: 1px solid black; background: #ff6600; padding: 5px;}
    td{border: 1px solid black; padding: 5px;}
    h2{border:30px;}
    h2:hover{color:blue;cursor:pointer;}
    tr:nth-child(even) {background: #CCC}
    tr:nth-child(odd) {background: #FFF}
    tr:hover{background-color:#000099;color:white}
    </style>")
    $TimeTable = @()
#endregion Script parameters

#region Get WinEvents
    $WinEvents = Get-WinEvent -FilterHashtable @{logname='System';id=$Events;providername='Microsoft-Windows-Winlogon';starttime=$strDate.Start;EndTime=$strDate.Stop} -ErrorAction SilentlyContinue | Sort-Object timecreated

#endregion

#region execute events per day
    $Output = for($i=1;$i -le $TotalDays;$i++){

        $WorkDay = @{
            Start = (Get-Date $strDate.Start -Day $i)
            Stop = (Get-Date $strDate.Start -Day $i).AddDays(1).AddMilliseconds(-1)
        }

        $GetEvents = $WinEvents | Where-Object {$_.timecreated.day -eq $WorkDay.Start.day}

        $WorkEvents = if (!($null -eq $GetEvents)) {
                        if($GetEvents[0].id -eq $LogoffID){
                            Set-Result  -TimeCreated ([datetime]$WorkDay.Start) `
                                        -ID $LogonID `
                                        -LevelDisplayName "Information" `
                                        -Message "Logon - created" `
                                        #-SID $($GetEvents[0].properties.value.value)
                        }

                        foreach ($Event in $GetEvents) {
                            Set-Result  -TimeCreated ([datetime]$Event.TimeCreated) `
                                    -ID               $Event.id `
                                    -LevelDisplayName "Information" `
                                    -Message $( if($Event.id -eq $LogonID) {
                                                    "Logon"
                                                }
                                                elseif ($Event.id -eq $LogoffID) {
                                                    "Logoff"
                                                })`
                                    #-SID $($Event.properties.value.value)
                        }

                        if($GetEvents[-1].id -eq $LogonID){
                            if($GetEvents[-1].timecreated.day -eq $(Get-Date).day) {

                                Set-Result  -TimeCreated (Get-Date) `
                                        -ID $LogoffID `
                                        -LevelDisplayName "Information" `
                                        -Message "Logoff - created" `
                                        #-SID $($GetEvents[-1].properties.value.value)
                            }else{

                            Set-Result  -TimeCreated ([datetime]$WorkDay.Stop) `
                                        -ID $LogoffID `
                                        -LevelDisplayName "Information" `
                                        -Message "Logoff - created" `
                                        #-SID $($GetEvents[-1].properties.value.value)
                            }
                            $LastLogonSID = $GetEvents[-1].properties.value.value
                        }
                    }
                    else {
                        if($WorkDay.Start.Day -eq $(Get-date).day) {

                            Write-Verbose "Creating logon and logoff for [$i]" -Verbose
                            Set-Result  -TimeCreated ([datetime]$WorkDay.Start) `
                                        -ID $LogonID `
                                        -LevelDisplayName "Information" `
                                        -Message "Logon - created" `
                                        -SID $LastLogonSID

                            Set-Result  -TimeCreated (Get-Date) `
                                        -ID $LogoffID `
                                        -LevelDisplayName "Information" `
                                        -Message "Logoff - created" `
                                        -SID $LastLogonSID

                        }
                        else {
                            Write-Warning "NoEvents listed for this day [$i]"
                        }
                    }
        #region Processing Events into worktable

        if(!($null -eq $WorkEvents)){
            $FData = $WorkEvents #| Where-Object Userid -eq $UserName
            if($Debug){
                <#[DEBUG]#>     $WorkEvents | Export-Csv -Path "$DebugPath\WorkEvents_$i.csv" -NoTypeInformation #>
                <#[DEBUG]#>     $FData | Export-Csv -Path "$DebugPath\FData_$i.csv" -NoTypeInformation #>
            }
            $Logons = $FData | Where-Object id -eq $LogonID
            $Logoffs = $FData | Where-Object id -eq $LogoffID

            $Times = Foreach ($Logon in $Logons){
                Try {
                    $Logoff = ($Logoffs | Where-Object {$_.TimeCreated -gt $($logon.TimeCreated)}).TimeCreated[0]
                    }
                Catch {
                    Write-Warning "[ERROR][$i] Logoff missing after $Logon"
                    Write-Warning "[ERROR][$i] Run script with the debug parameter to check the files in $DebugPath"
                    if($Debug){
                        <#[DEBUG]#>     $WorkEvents | Export-Csv -Path "$DebugPath\WorkDay_$($i)_unfiltered.csv" -NoTypeInformation #>
                        <#[DEBUG}#>     $FData | Export-Csv -Path "$DebugPath\WorkDay_$i.csv" -NoTypeInformation #>
                        }
                    $Logoff = $WorkDay.Stop
                    }
                $TimeDiff = "{0:0}" -f (($Logoff)-($Logon.TimeCreated)).Totalminutes
                $WorkCalc = (($logoff)-($Logon.TimeCreated))
                $Total = "{0}h {1}m" -f $WorkCalc.Hours,$WorkCalc.Minutes

                $WorkHours = $WorkCalc.Ticks
                $Logon | Select-Object @{l='Short';e={$_.timecreated.toshortdatestring()}},@{l='Logon';e={$_.TimeCreated}},@{l='Logoff';e={$Logoff}},@{l='Worktime';e={$WorkHours}},@{l='Total';e={$Total}},@{l='TimeDiff';e={$TimeDiff}},UserID
            }

            $TimeTable += $Times

            $DTHours = Get-Date ([datetime][long]($Times | Where-Object {$_.Short -eq $WorkDay.Start.ToShortDateString() } | Measure-Object Worktime -sum).sum) -Format "HH:mm"
            if($Debug){
                Write-Warning "[DEBUG] Working CSV [$i]"
                <#[DEBUG]#> $Times | Export-Csv -Path "$DebugPath\working($i).csv" -NoTypeInformation
            }
            $params = @{
                Date = $WorkDay.Start.ToShortDateString()
                Hours = if($DThours -like "00:00") {"-"} else {$DTHours}
                Logon = $DThours
                UserID = $Logon.UserID
            
            }
            New-object psobject -Property $params
        }
        #endregion Processing Events into worktable
    }
#endregion execute events per day

#region Generating CSV & HTML Output
    $Body = $Head
    $Body += $Output | Select-Object Date,Hours,UserID | ConvertTo-Html -Fragment -PreContent "<H1> Hours for $(Get-Date ($strDate.start) -Format 'MMMM yyyy')</H1>" -PostContent "<H2>$FullName</H2>"
    $Body | Out-file "$Savepath\$MonthName.html" -Force

    $Output
    $TimeTable | Export-Csv "$SavePath\$MonthName-TimeTable.csv" -NoTypeInformation -delimiter ";"

    if($ShowFile){
        Invoke-Item "$SavePath\$MonthName.html"
    }
    if ($Debug){
        $Output | Out-GridView -Title "Workevents data" -Wait
    }

#endregion
