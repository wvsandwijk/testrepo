---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSystemInfo

## SYNOPSIS
Gets the system information.

## SYNTAX

```
Get-HPEiLOSystemInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets the comprehensive target system information.
This cmdlet is supported only on iLO 5.

## EXAMPLES

### EXAMPLE 1
```
$connection is passed via commandline. 

PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = Get-HPEiLOSystemInfo -Connection $connection

PS C:\> $obj | fl

AssetTag                        : a 234567890123456789012345678901
BiosVersion                     : I41 v1.30 (12/14/2017)
Boot                            : HPE.iLO.Response.Redfish.ComputerSystemBoot
Description                     : 
DNSHostName                     : 
Id                              : 1
IndicatorLED                    : Off
Manufacturer                    : HPE
MemorySummary                   : HPE.iLO.Response.Redfish.Memorysummary
Model                           : ProLiant BL460c Gen10
Name                            : Computer System
PartNumber                      : 
PowerState                      : Off
ProcessorSummary                : HPE.iLO.Response.Redfish.Processorsummary
SKU                             : BL460cGen10
SerialNumber                    : 2M270801TB
SystemType                      : Physical
TrustedModules                  : {HPE.iLO.Response.Redfish.Trustedmodule}
AggregateHealthStatus           : HPE.iLO.Response.Redfish.AggregateHealthStatus
Bios                            : HPE.iLO.Response.Redfish.HpeComputerSystemExtBios
CurrentPowerOnTimeSeconds       : 
DeviceDiscoveryComplete         : HPE.iLO.Response.Redfish.DeviceDiscoverycomplete
EndOfPostDelaySeconds           : 90
HostOS                          : 
IsColdBooting                   : 
IntelligentProvisioningAlwaysOn : 
IntelligentProvisioningLocation : 
IntelligentProvisioningVersion  : 
ProcessorJitterControl          : 
PCAPartNumber                   : 847012-001
PCASerialNumber                 : PVZBFX4LM6100A
PowerOnMinutes                  : 180361
PostDiscoveryCompleteTimeStamp  : 
PostDiscoveryMode               : Auto
PostMode                        : PostToReboot
PostState                       : PowerOff
PowerAllocationLimit            : 500
PowerAutoOn                     : PowerOn
PowerOnDelay                    : Minimum
PowerRegulatorMode              : Dynamic
PowerRegulatorModesSupported    : {OSControl, Dynamic, Max, Min}
ServerFQDN                      : 
ServerSignature                 : 
ServerSignatureStatus           : 
VirtualProfile                  : Inactive
VirtualUUID                     : 
SystemStatus                    : HPE.iLO.Response.Redfish.Status
IP                              : 10.20.30.40
Hostname                        : abcd.com
Status                          : OK
StatusInfo                      : 

PS C:\> $obj.SystemStatus

Health State    HealthRollUp
------ -----    ------------
OK     Disabled
```

This cmdlet gets system information for the iLO 5 server with the connection object passed as named parameter.

### EXAMPLE 2
```
$connection is passed via pipeline.

PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.50 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOSystemInfo

PS C:\> $obj | fl

AssetTag                        : a 234567890123456789012345678901
BiosVersion                     : I41 v1.30 (12/14/2017)
Boot                            : HPE.iLO.Response.Redfish.ComputerSystemBoot
Description                     : 
DNSHostName                     : 
Id                              : 1
IndicatorLED                    : Off
Manufacturer                    : HPE
MemorySummary                   : HPE.iLO.Response.Redfish.Memorysummary
Model                           : ProLiant BL460c Gen10
Name                            : Computer System
PartNumber                      : 
PowerState                      : Off
ProcessorSummary                : HPE.iLO.Response.Redfish.Processorsummary
SKU                             : BL460cGen10
SerialNumber                    : 2M270801TB
SystemType                      : Physical
TrustedModules                  : {HPE.iLO.Response.Redfish.Trustedmodule}
AggregateHealthStatus           : HPE.iLO.Response.Redfish.AggregateHealthStatus
Bios                            : HPE.iLO.Response.Redfish.HpeComputerSystemExtBios
CurrentPowerOnTimeSeconds       : 
DeviceDiscoveryComplete         : HPE.iLO.Response.Redfish.DeviceDiscoverycomplete
EndOfPostDelaySeconds           : 90
HostOS                          : 
IsColdBooting                   : 
IntelligentProvisioningAlwaysOn : 
IntelligentProvisioningLocation : 
IntelligentProvisioningVersion  : 
ProcessorJitterControl          : 
PCAPartNumber                   : 847012-001
PCASerialNumber                 : PVZBFX4LM6100A
PowerOnMinutes                  : 180361
PostDiscoveryCompleteTimeStamp  : 
PostDiscoveryMode               : Auto
PostMode                        : PostToReboot
PostState                       : PowerOff
PowerAllocationLimit            : 500
PowerAutoOn                     : PowerOn
PowerOnDelay                    : Minimum
PowerRegulatorMode              : Dynamic
PowerRegulatorModesSupported    : {OSControl, Dynamic, Max, Min}
ServerFQDN                      : 
ServerSignature                 : 
ServerSignatureStatus           : 
VirtualProfile                  : Inactive
VirtualUUID                     : 
SystemStatus                    : HPE.iLO.Response.Redfish.Status
IP                              : 10.20.30.40
Hostname                        : abcd.com
Status                          : OK
StatusInfo                      : 

PS C:\> $obj | fl

AssetTag                        : a 234567890123456789012345678901
BiosVersion                     : I41 v1.30 (12/14/2017)
Boot                            : HPE.iLO.Response.Redfish.ComputerSystemBoot
Description                     : 
DNSHostName                     : 
Id                              : 1
IndicatorLED                    : Off
Manufacturer                    : HPE
MemorySummary                   : HPE.iLO.Response.Redfish.Memorysummary
Model                           : ProLiant BL460c Gen10
Name                            : Computer System
PartNumber                      : 
PowerState                      : Off
ProcessorSummary                : HPE.iLO.Response.Redfish.Processorsummary
SKU                             : BL460cGen10
SerialNumber                    : 2M270801TB
SystemType                      : Physical
TrustedModules                  : {HPE.iLO.Response.Redfish.Trustedmodule}
AggregateHealthStatus           : HPE.iLO.Response.Redfish.AggregateHealthStatus
Bios                            : HPE.iLO.Response.Redfish.HpeComputerSystemExtBios
CurrentPowerOnTimeSeconds       : 
DeviceDiscoveryComplete         : HPE.iLO.Response.Redfish.DeviceDiscoverycomplete
EndOfPostDelaySeconds           : 90
HostOS                          : 
IsColdBooting                   : 
IntelligentProvisioningAlwaysOn : 
IntelligentProvisioningLocation : 
IntelligentProvisioningVersion  : 
ProcessorJitterControl          : 
PCAPartNumber                   : 847012-001
PCASerialNumber                 : PVZBFX4LM6100A
PowerOnMinutes                  : 180361
PostDiscoveryCompleteTimeStamp  : 
PostDiscoveryMode               : Auto
PostMode                        : PostToReboot
PostState                       : PowerOff
PowerAllocationLimit            : 500
PowerAutoOn                     : PowerOn
PowerOnDelay                    : Minimum
PowerRegulatorMode              : Dynamic
PowerRegulatorModesSupported    : {OSControl, Dynamic, Max, Min}
ServerFQDN                      : 
ServerSignature                 : 
ServerSignatureStatus           : 
VirtualProfile                  : Inactive
VirtualUUID                     : 
SystemStatus                    : HPE.iLO.Response.Redfish.Status
IP                              : 10.20.30.50
Hostname                        : abc.com
Status                          : OK
StatusInfo                      :
```

This cmdlet shows the output with an array of iLO 5 connection objects passed as pipeline parameter.

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

### HPE.iLO.Response.Redfish.SystemInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

