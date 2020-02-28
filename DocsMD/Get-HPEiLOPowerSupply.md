---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOPowerSupply

## SYNOPSIS
Gets the power supply details for the host server where the iLO is located.

## SYNTAX

```
Get-HPEiLOPowerSupply [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOPowerSupply cmdlet gets the power supply details of the host server where the iLO is located.
These details include high efficiency mode, redundancy status, power management controller firmware version, present power, GPU, CPU, and DIMM reading in power supply summary and capacity, firmware version, hot-plug capability, model details, and status for each power supply.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOPowerSupply

PS C:\> $out

PowerSupplySummary                : HPE.iLO.Response.RIBCL.PowerSupplySummary
PowerSupplies                     : {HPE.iLO.Response.RIBCL.Supply, HPE.iLO.Response.RIBCL.Supply}
PowerDiscoveryServicesiPDUSummary : {}
IP                                : 10.20.30.1
Hostname                          : abcd.com
Status                            : OK
StatusInfo                        : 

PS C:\> $out.PowerSupplySummary

HighEfficiencyMode                       : Balanced
HPPowerDiscoveryServicesRedundancyStatus : N/A
PowerManagementControllerFirmwareVersion : 1.0.9
PowerSystemRedundancy                    : Redundant
PresentPowerReading                      : 86 Watts

PS C:\> $out.PowerSupplies

Label           : Power Supply 1
Present         : Yes
Status          : Good, In Use
PDS             : No
HotPlugCapable  : Yes
Model           : 720479-B21
Spare           : 754381-001
SerialNumber    : 5DLVD0CLL9M1JT
Capacity        : 800 Watts
FirmwareVersion : 1.00

Label           : Power Supply 2
Present         : Yes
Status          : Good, In Use
PDS             : No
HotPlugCapable  : Yes
Model           : 720479-B21
Spare           : 754381-001
SerialNumber    : 5DLVD0CLL9M1GD
Capacity        : 800 Watts
FirmwareVersion : 1.00
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOPowerSupply

PS C:\> $out

PowerSupplySummary : HPE.iLO.Response.Redfish.PowerSupplySummary
PowerSupplies      : {HpeServerPowerSupply, HpeServerPowerSupply}
IP                 : 10.20.30.1
Hostname           : abcd.com
Status             : OK
StatusInfo         : 

PS C:\> $out.PowerSupplySummary | fl


HighEfficiencyMode                       : Balanced
PowerManagementControllerFirmwareVersion : 1.0.0
PowerSystemRedundancy                    : Redundant
PresentPowerReading                      : 0

PS C:\> $out.PowerSupplies

Name                 : HpeServerPowerSupply
Model                : 
SerialNumber         : 
Spare                : 
PartNumber           : 
PowerSupplyType      : AC
Capacity             : 0
FirmwareVersion      : 0.00
AveragePower         : 0
LineInputVoltage     : 0
LineInputVoltageType : Unknown
BayNumber            : 1
Mismatched           : No
HotPlugCapable       : Yes
MaxPowerOutputWatts  : 0
Status               : HPE.iLO.Response.Redfish.Status
PowerSupplyStatus    : Unknown
iPDUCapable          : No
iPDU                 : 

Name                 : HpeServerPowerSupply
Model                : 
SerialNumber         : 
Spare                : 
PartNumber           : 
PowerSupplyType      : AC
Capacity             : 0
FirmwareVersion      : 0.00
AveragePower         : 0
LineInputVoltage     : 0
LineInputVoltageType : Unknown
BayNumber            : 2
Mismatched           : No
HotPlugCapable       : Yes
MaxPowerOutputWatts  : 0
Status               : HPE.iLO.Response.Redfish.Status
PowerSupplyStatus    : Unknown
iPDUCapable          : Yes
iPDU                 :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOPowerRegulatorSetting -Connection $connection

PowerSupplySummary                : HPE.iLO.Response.RIBCL.PowerSupplySummary
PowerSupplies                     : {HPE.iLO.Response.RIBCL.Supply, HPE.iLO.Response.RIBCL.Supply}
PowerDiscoveryServicesiPDUSummary : {}
IP                                : 10.20.30.1
Hostname                          : abcd.com
Status                            : OK
StatusInfo                        : 

PowerSupplySummary : HPE.iLO.Response.Redfish.PowerSupplySummary
PowerSupplies      : {HpeServerPowerSupply, HpeServerPowerSupply}
IP                 : 10.20.30.2
Hostname           : xyz.example.com
Status             : OK
StatusInfo         :
```

This example shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

### EXAMPLE 4
```
PS C:\>$con = Connect-HPEiLO 192.168.10.42 admin admin123 -DisableCertificateAuthentication

PS C:\>$p1 = $con | Get-HPEiLOPowerSupply

PS C:\>$p1.powersupplysummary

HasPowerMetering                         : True
HasGpuPowerMetering                      : False
HasCpuPowerMetering                      : True
HasDimmPowerMetering                     : True
HighEfficiencyMode                       : Balanced
PowerManagementControllerFirmwareVersion : 1.0.4
PowerSystemRedundancy                    : NonRedundant
PresentPowerReading                      : 106
```

Power Supply output from an iLO5 server which supports new metering attributes.

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
Default value: Object
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.RIBCL.PowerSupplyInfo[] or HPE.iLO.Response.Redfish.PowerSupplyInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

