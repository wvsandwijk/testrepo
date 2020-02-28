---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOInstallationTaskQueue

## SYNOPSIS
Gets the Installation Task Queue detail.

## SYNTAX

```
Get-HPEiLOInstallationTaskQueue [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOInstallationTaskQueue cmdlet gets the Installation Task Queue detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLOInstallationTaskQueue

PS C:\> $out

InstallationTaskQueueInfo : {HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo...}
IP                        : 10.20.30.2
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

PS C:\> $out.InstallationTaskQueueInfo

Command           : ApplyUpdate
Id                : 506b3169
Component         : Unavailable
Created           : 6/30/2017 6:18:50 PM
Expire            : 
Filename          : 
Modified          : 6/30/2017 6:18:50 PM
TaskName          : TestTask
UpdatableBy       : 
TPMOverride       : false
UpdateRecoverySet : false
Result            : HPE.iLO.Response.Redfish.Result
State             : Pending
StartAfter        : 

Command           : ApplyUpdate
Id                : 1240c3cc
Component         : /redfish/v1/UpdateService/ComponentRepository/b00b43a7
Created           : 6/30/2017 6:18:50 PM
Expire            : 
Filename          : ilo5_115.bin
Modified          : 6/30/2017 6:18:50 PM
TaskName          : System Recovery Set item (iLO 5)
UpdatableBy       : {Bmc}
TPMOverride       : true
UpdateRecoverySet : false
Result            : 
State             : Pending
StartAfter        : 

Command           : ApplyUpdate
Id                : 82820adf
Component         : /redfish/v1/UpdateService/ComponentRepository/0d51810a
Created           : 6/30/2017 6:18:50 PM
Expire            : 
Filename          : IEGen10_0.1.5.2.signed.bin
Modified          : 6/30/2017 6:18:50 PM
TaskName          : System Recovery Set item (Innovation Engine)
UpdatableBy       : {Bmc}
TPMOverride       : true
UpdateRecoverySet : false
Result            : 
State             : Pending
StartAfter        : 

Command           : ApplyUpdate
Id                : ff35842f
Component         : /redfish/v1/UpdateService/ComponentRepository/26b7abcb
Created           : 2018-01-17T05:08:25Z
Expire            : 
Filename          : CPLD_DL360_DL380_Gen10_VP1_v2A2A_full_signed.vme
Modified          : 2018-01-17T05:08:25Z
TaskName          : System Recovery Set item (System Programmable Logic Device)
UpdatableBy       : {Bmc}
TPMOverride       : true
UpdateRecoverySet : false
Result            : 
State             : Pending
StartAfter        : 

Command           : ApplyUpdate
Id                : 2f0e29f0
Component         : /redfish/v1/UpdateService/ComponentRepository/b9a1ecb4
Created           : 2018-01-17T05:08:25Z
Expire            : 
Filename          : U30_1.26_11_14_2017.signed.flash
Modified          : 2018-01-17T05:08:25Z
TaskName          : System Recovery Set item (System ROM)
UpdatableBy       : {Bmc}
TPMOverride       : true
UpdateRecoverySet : false
Result            : 
State             : Pending
StartAfter        : 

Command           : Wait
Id                : e5e30857
Component         : 
Created           : 2001-06-23T15:39:04Z
Expire            : 
Filename          : 
Modified          : 2001-06-23T15:39:04Z
TaskName          : waittask
UpdatableBy       : {Bmc}
TPMOverride       : 
UpdateRecoverySet : 
Result            : 
State             : Pending
StartAfter        : 
WaitTimeSeconds   : 20
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOInstallationTaskQueue -Connection $connection

InstallationTaskQueueInfo : {HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo...}
IP                        : 10.20.30.1
Hostname                  : xyz.example.com
Status                    : OK
StatusInfo                : 

InstallationTaskQueueInfo : {HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo, 
                            HPE.iLO.Response.Redfish.InstallationTaskQueueInfo...}
IP                        : 10.20.30.2
Hostname                  : abcd.com
Status                    : OK
StatusInfo                :
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.InstallationTaskQueue[]
## NOTES

## RELATED LINKS

[Connect-HPEiLO]()

[Clear-HPEiLOInstallationTaskQueue]()

[http://www.hpe.com/servers/powershell]()

