---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Save-HPEiLOAHSLog

## SYNOPSIS
Saves the AHS log.

## SYNTAX

### DurationSet
```
Save-HPEiLOAHSLog [-Connection] <Connection[]> [-FileLocation] <String[]> -Duration <String[]>
 [-CaseNumber <String[]>] [-CompanyName <String[]>] [-ContactName <String[]>] [-Email <String[]>]
 [-PhoneNumber <String[]>] [-OutputType <String>] [<CommonParameters>]
```

### DaysSet
```
Save-HPEiLOAHSLog [-Connection] <Connection[]> [-FileLocation] <String[]> [-CaseNumber <String[]>]
 [-CompanyName <String[]>] [-ContactName <String[]>] -Days <UInt32[]> [-Email <String[]>]
 [-PhoneNumber <String[]>] [-OutputType <String>] [<CommonParameters>]
```

### FromToSet
```
Save-HPEiLOAHSLog [-Connection] <Connection[]> [-FileLocation] <String[]> [-CaseNumber <String[]>]
 [-CompanyName <String[]>] [-ContactName <String[]>] [-Email <String[]>] -FromDate <DateTime[]>
 -ToDate <DateTime[]> [-PhoneNumber <String[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Saves the AHS log into the specified local path.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $connection | Save-HPEiLOAHSLog -FileLocation C:\AHSLog -Duration LastWeek

PS C:\>
```

This example shows the output on iLO 5 server when connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $connection | Save-HPEiLOAHSLog -FileLocation C:\AHSLog -Days 20 -CompanyName $companyName -ContactName $contactName -Email $email -PhoneNumber $phone

PS C:\>
```

This example shows the output on iLO 5 server, when connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Save-HPEiLOAHSLog -Connection $connection -FileLocation C:\AHSLog -Duration LastWeek

PS C:\>
```

This example shows the output on multiple iLO 5 server, when connection object is passed as named parameter.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and accompanying Username and Password to log in to the iLO.

```yaml
Type: Connection[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -FileLocation
The directory location where AHS log file gets created.
The file name of the format \<HPE_ServerSerialNumber_Date\> gets created in the specified directory location.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Duration
Specifies whether the entire log or recent log entries (7 days) has to be downloaded.
Accepted values are "All" and "LastWeek".

```yaml
Type: String[]
Parameter Sets: DurationSet
Aliases:
Accepted values: All, LastWeek

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CaseNumber
Specifies the case number that gets inserted in the AHS log header.
Accepts up to 14 characters.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CompanyName
Specifies the company name that gets inserted in the AHS log header.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ContactName
Specifies the contact person name that gets inserted in the AHS log header.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Email
Specifies the email id of the contact person that gets inserted in the AHS log header.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PhoneNumber
Specifies the phone number of the contact person that gets inserted in the AHS log header.
Accepts up to 39 characters.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OutputType
Specifies the type of required output.
Possible values are RawRequest, RawResponse, and Object.
Default value is Object.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Object, RawRequest, RawResponse

Required: False
Position: Named
Default value: Object
Accept pipeline input: False
Accept wildcard characters: False
```

### -Days
This parameter when given downloads the most recent N days of the AHS log.

```yaml
Type: UInt32[]
Parameter Sets: DaysSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FromDate
This parameter must be given along with 'ToDate' to limit the range of log data returned.
Supported format is of the form yyyy-MM-dd.
(For example, 2018-06-27)

```yaml
Type: DateTime[]
Parameter Sets: FromToSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ToDate
This parameter must be given along with 'FromDate' to limit the range of log data returned.
Supported format is of the form yyyy-MM-dd.
(For example, 2018-06-27)

```yaml
Type: DateTime[]
Parameter Sets: FromToSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.UInt32[]
System.DateTime[]
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOAHSStatus]()

[Set-HPEiLOAHSStatus]()

[Clear-HPEiLOAHSData]()

