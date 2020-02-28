---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSecureSystemEraseStatus

## SYNOPSIS
Gets the overall erase status of System ROM, iLO, and User Data.

## SYNTAX

```
Get-HPEiLOSecureSystemEraseStatus [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSecureSystemEraseStatus gets the overall erase status for System ROM, iLO, User Data and their individual components.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSecureSystemEraseStatus

PS C:\> $out

EraseStatus                         : 
ElapsedEraseTimeInMinutes           : 2
EstimatedEraseTimeInMinutes         : 3763
SystemROMAndiLOEraseComponentStatus : HPE.iLO.Response.Redfish.SystemROMAndiLOEraseComponent
SystemROMAndiLOEraseStatus          : InProgress
UserDataEraseComponentStatus        : HPE.iLO.Response.Redfish.UserDataEraseComponent
UserDataEraseStatus                 : InProgress
IP                                  : 10.20.30.1
Hostname                            : xl170rgen10-02.powershvpn.com
Status                              : OK
StatusInfo                          : 

PS C:\> $out.SystemROMAndiLOEraseComponentStatus | fl

BIOSSettingsEraseStatus : CompletedWithSuccess
iLOSettingsEraseStatus  : Idle

PS C:\> $out.UserDataEraseComponentStatus | fl

SmartStorageEraseStatus : 
NVMeDrivesEraseStatus   : 
SATADrivesEraseStatus   : 
NVDIMMEraseStatus       : 
TPMEraseStatus
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOSecureSystemEraseStatus -Connection $connection

PS C:\> $out

EraseStatus                         : 
ElapsedEraseTimeInMinutes           : 4
EstimatedEraseTimeInMinutes         : 3763
SystemROMAndiLOEraseComponentStatus : HPE.iLO.Response.Redfish.SystemROMAndiLOEraseComponent
SystemROMAndiLOEraseStatus          : InProgress
UserDataEraseComponentStatus        : HPE.iLO.Response.Redfish.UserDataEraseComponent
UserDataEraseStatus                 : InProgress
IP                                  : 10.20.30.1
Hostname                            : xl170rgen10-02.powershvpn.com
Status                              : OK
StatusInfo                          : 

ElapsedEraseTimeInMinutes           : 0
EstimatedEraseTimeInMinutes         : 0
SystemROMAndiLOEraseComponentStatus : HPE.iLO.Response.Redfish.SystemROMAndiLOEraseComponent
SystemROMAndiLOEraseStatus          : Idle
UserDataEraseComponentStatus        : HPE.iLO.Response.Redfish.UserDataEraseComponent
UserDataEraseStatus                 : Idle
IP                                  : 10.20.40.1
Hostname                            : abcdef.com
Status                              : OK
StatusInfo                          :
```

This example shows the output on iLO 5 with an array of connection objects passed as named parameter.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and username and password provided to log in to the iLO.

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.SecureSystemEraseStatus[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLOSecureSystemErase]()

