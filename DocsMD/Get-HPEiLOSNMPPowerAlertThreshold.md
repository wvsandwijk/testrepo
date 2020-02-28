---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSNMPPowerAlertThreshold

## SYNOPSIS
Gets the power alert threshold for the iLO devices.

## SYNTAX

```
Get-HPEiLOSNMPPowerAlertThreshold [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOPowerAlertThreshold cmdlet gets the power alert threshold for the iLO devices.
You must purchase the iLO Advanced license to enable this feature.
The details returned include:

· PowerAlertType - Valid values are:
      -Disabled - No power alerts are set.
      -Peak - Represents the half-second average power reading during the sample.
      -Average - Represents the mean power reading during the sample.

· PowerAlertThreshold - Sets the alert threshold in Watts.

· PowerAlertDuration - Sets the length of the sample time, in minutes, starting at 5.
Duration will always be in 5 minute intervals up to 240 minutes maximum.
Any positive integer can be used, but it will be rounded off to the nearest 5 minutes.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOSNMPPowerAlertThreshold


PowerAlertType      : Peak
PowerAlertThreshold : 340
PowerAlertDuration  : 5
IP                  : 10.20.30.1
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOSNMPPowerAlertThreshold -Connection $connection


PowerAlertType      : Average
PowerAlertThreshold : 340
PowerAlertDuration  : 5
IP                  : 10.20.30.2
Hostname            : xyz.example.com
Status              : OK
StatusMessage       : 
StatusInfo          :
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOSNMPPowerAlertThreshold


PowerAlertType      : Peak
PowerAlertThreshold : 300
PowerAlertDuration  : 20
IP                  : 10.20.30.1
Hostname            : xyz.example.com
Status              : OK
StatusMessage       : 
StatusInfo          : 

PowerAlertType      : Average
PowerAlertThreshold : 340
PowerAlertDuration  : 5
IP                  : 10.20.30.2
Hostname            : xyz.example.com
Status              : OK
StatusMessage       : 
StatusInfo          :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as pipeline input.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.SNMPPowerAlertThreshold[] or HPE.iLO.Response.Redfish.SNMPPowerAlertThreshold[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOSNMPPowerAlertThreshold]()

