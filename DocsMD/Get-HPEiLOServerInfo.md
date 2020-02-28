---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOServerInfo

## SYNOPSIS
Gets the server information detail.

## SYNTAX

```
Get-HPEiLOServerInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOServerInfo cmdlet gets the server information detail.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOServerInfo

PS C:\> $out

FanInfo           : {HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan, 
                    HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan...}
FirmwareInfo      : {HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation...}
TemperatureInfo   : {HPE.iLO.Response.RIBCL.Temperature, HPE.iLO.Response.RIBCL.Temperature, 
                    HPE.iLO.Response.RIBCL.Temperature, HPE.iLO.Response.RIBCL.Temperature...}
PowerSupplyInfo   : HPE.iLO.Response.RIBCL.iLO4.PowerSupply
MemoryInfo        : HPE.iLO.Response.RIBCL.iLO4.MemoryInfo
NICInfo           : HPE.iLO.Response.RIBCL.iLO4.NICInfo
ProcessorInfo     : {HPE.iLO.Response.RIBCL.Processor, HPE.iLO.Response.RIBCL.Processor}
HealthSummaryInfo : HPE.iLO.Response.RIBCL.iLO4.HealthSummaryInfo
ServerName        : Poseidon Server
HostOS            : HPE.iLO.Response.RIBCL.iLO4.HostOS
IP                : 10.20.30.1
Hostname          : abcd.com
Status            : OK
StatusInfo        :
```

This example shows the usage of the cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOServerInfo

PS C:\> $out

FanInfo           : {HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan, 
                    HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan...}
FirmwareInfo      : {HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation...}
TemperatureInfo   : {HPE.iLO.Response.Redfish.Temperature, HPE.iLO.Response.Redfish.Temperature, 
                    HPE.iLO.Response.Redfish.Temperature, HPE.iLO.Response.Redfish.Temperature...}
MemoryInfo        : HPE.iLO.Response.Redfish.MemoryInfoDetail
NICInfo           : HPE.iLO.Response.Redfish.NICInfoDetail
PowerSupplyInfo   : HPE.iLO.Response.Redfish.PowerSupply
ProcessorInfo     : {HPE.iLO.Response.Redfish.Processor}
HealthSummaryInfo : HPE.iLO.Response.Redfish.HealthSummaryInfo
ServerName        : Poseidon Server
HostOS            : HPE.iLO.Response.Redfish.HostOS
IP                : 10.20.30.1
Hostname          : xyz.example.com
Status            : OK
StatusInfo        :
```

This example shows the usage of the cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = Get-HPEiLOServerInfo -Connection $connection

PS C:\> $out

FanInfo           : {HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan, 
                    HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan...}
FirmwareInfo      : {HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation, 
                    HPE.iLO.Response.RIBCL.FirmwareInformation...}
TemperatureInfo   : {HPE.iLO.Response.RIBCL.Temperature, HPE.iLO.Response.RIBCL.Temperature, 
                    HPE.iLO.Response.RIBCL.Temperature, HPE.iLO.Response.RIBCL.Temperature...}
PowerSupplyInfo   : HPE.iLO.Response.RIBCL.iLO4.PowerSupply
MemoryInfo        : HPE.iLO.Response.RIBCL.iLO4.MemoryInfo
NICInfo           : HPE.iLO.Response.RIBCL.iLO4.NICInfo
ProcessorInfo     : {HPE.iLO.Response.RIBCL.Processor, HPE.iLO.Response.RIBCL.Processor}
HealthSummaryInfo : HPE.iLO.Response.RIBCL.iLO4.HealthSummaryInfo
ServerName        : Poseidon Server
HostOS            : HPE.iLO.Response.RIBCL.iLO4.HostOS
IP                : 10.20.30.1
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

FanInfo           : {HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan, 
                    HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan...}
FirmwareInfo      : {HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation, 
                    HPE.iLO.Response.Redfish.FirmwareInformation...}
TemperatureInfo   : {HPE.iLO.Response.Redfish.Temperature, HPE.iLO.Response.Redfish.Temperature, 
                    HPE.iLO.Response.Redfish.Temperature, HPE.iLO.Response.Redfish.Temperature...}
MemoryInfo        : HPE.iLO.Response.Redfish.MemoryInfoDetail
NICInfo           : HPE.iLO.Response.Redfish.NICInfoDetail
PowerSupplyInfo   : HPE.iLO.Response.Redfish.PowerSupply
ProcessorInfo     : {HPE.iLO.Response.Redfish.Processor}
HealthSummaryInfo : HPE.iLO.Response.Redfish.HealthSummaryInfo
ServerName        : Poseidon Server
HostOS            : HPE.iLO.Response.Redfish.HostOS
IP                : 10.20.30.2
Hostname          : xyz.example.com
Status            : OK
StatusInfo        :
```

This example shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

### EXAMPLE 4
```
PS C:\> $con = Connect-HPEiLO 192.168.10.42 admin admin123 -DisableCertificateAuthentication

PS C:\> $s = $con[0] | Get-HPEiLOServerInfo

PS C:\> $s.MemoryInfo.MemoryDetails[0].MemoryData[0]

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 1
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm1
Armed                         : 
Attributes                    : 
DIMMStatus                    : NotPresent
MinimumVoltageVolts           : 0
PredictedMediaLifeLeftPercent : 
ProductName                   : 
SPDBytes                      : 
RelatedPhysicalDIMMs          : 
RelatedBackupStores           : 
RelatedPowerBackupUnitBays    : 
OperatingMemoryModes          : 
OperatingSpeedMHz             : 
PartNumber                    : 
PersistentRegionSizeLimitMiB  : 0
RankCount                     : 
SerialNumber                  : 
Socket                        : 1
Slot                          : 1
Status                        : HPE.iLO.Response.Redfish.Status
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
FirmwareApiVersion            : 
SecurityStates                : 
VolatileRegionSizeLimitMiB    : 0
VolatileRegionNumberLimit     : 
VolatileRegionSizeMaxMiB      : 
VolatileSizeMiB               : 0
AllocationIncrementMiB        : 
AllocationAlignmentMiB        : 
CacheSizeMiB                  : 0
LogicalSizeMiB                : 0
NonVolatileSizeMiB            : 0
PersistentRegionNumberLimit   : 
PersistentRegionSizeMaxMiB    : 
MemoryChunkSizePercentage     : 
Regions                       : 
SecurityCapabilities          : HPE.iLO.Response.Redfish.SecurityCapabilities
```

Gets new memory information added in iLO5.

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

### HPE.iLO.Response.RIBCL.ServerInfo[] or HPE.iLO.Response.Redfish.ServerInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

