---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOPerformanceAlertSetting

## SYNOPSIS
Gets the set of thresholds defined for a sensor.

## SYNTAX

```
Get-HPEiLOPerformanceAlertSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The cmdlet Get-HPEiLOPerformanceAlertSetting gets the set of thresholds defined for a sensor.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOPerformanceAlertSetting

PS C:\> $out

CPUUtilization             : HPE.iLO.Response.Redfish.AlertSettingData
MemoryBusUtilization       : HPE.iLO.Response.Redfish.AlertSettingData
IOBusUtilization           : HPE.iLO.Response.Redfish.AlertSettingData
CPUInterconnectUtilization : HPE.iLO.Response.Redfish.AlertSettingData
JitterCount                : HPE.iLO.Response.Redfish.AlertSettingData
CPUPower                   : HPE.iLO.Response.Redfish.AlertSettingData
IP                         : 10.20.30.1
Hostname                   : iloqahost6.in.rdlabs.hpecorp.net
Status                     : OK
StatusInfo                 : 


PS C:\> $out.CPUUtilization

LowerThresholdReading    : 12
LowerThresholdDwellTime  : 40
LowerThresholdActivation : Decreasing
UpperThresholdReading    : 1
UpperThresholdDwellTime  : 0
UpperThresholdActivation : Increasing
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = Get-HPEiLOPerformanceAlertSetting -Connection $connection

PS C:\> $out

CPUUtilization             : HPE.iLO.Response.Redfish.AlertSettingData
MemoryBusUtilization       : HPE.iLO.Response.Redfish.AlertSettingData
IOBusUtilization           : HPE.iLO.Response.Redfish.AlertSettingData
CPUInterconnectUtilization : HPE.iLO.Response.Redfish.AlertSettingData
JitterCount                : HPE.iLO.Response.Redfish.AlertSettingData
CPUPower                   : HPE.iLO.Response.Redfish.AlertSettingData
IP                         : 10.20.30.1
Hostname                   : iloqahost6.in.rdlabs.hpecorp.net
Status                     : OK
StatusInfo                 : 

CPUUtilization             : HPE.iLO.Response.Redfish.AlertSettingData
MemoryBusUtilization       : HPE.iLO.Response.Redfish.AlertSettingData
IOBusUtilization           : HPE.iLO.Response.Redfish.AlertSettingData
CPUInterconnectUtilization : HPE.iLO.Response.Redfish.AlertSettingData
JitterCount                : HPE.iLO.Response.Redfish.AlertSettingData
CPUPower                   : HPE.iLO.Response.Redfish.AlertSettingData
IP                         : 10.20.30.2
Hostname                   : iloqahost6.in.rdlabs.hpecorp.net
Status                     : OK
StatusInfo                 :
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.PerformanceAlertSetting
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOPerformanceAlertSetting]()

