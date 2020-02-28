---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOMemoryInfo

## SYNOPSIS
Gets the memory details for the host server where the iLO is located.

## SYNTAX

```
Get-HPEiLOMemoryInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOMemoryInfo cmdlet gets the memory details for the host server where the iLO is located.
This includes AdvancedMemoryProtection, MemoryDetailsSummary, and MemoryDetails for each CPU.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = connect-hpeilo 10.20.30.40 admin admin123 -DisableCertificateAuthentication

PS C:\> $obj = ,$connection | Get-HPEiLOMemoryInfo

PS C:\> $obj

AdvancedMemoryProtection : HPE.iLO.Response.RIBCL.iLO 4.AdvancedMemoryProtection
MemoryDetailsSummary     : {HPE.iLO.Response.RIBCL.iLO 4.MemoryDetailsSummary, 
                           HPE.iLO.Response.RIBCL.iLO 4.MemoryDetailsSummary}
MemoryDetails            : {HPE.iLO.Response.RIBCL.iLO 4.MemoryDetails, 
                           HPE.iLO.Response.RIBCL.iLO 4.MemoryDetails}
IP                       : 10.20.30.40
Hostname                 : abcd.com
Status                   : OK
StatusInfo               : 

PS C:\> $obj.AdvancedMemoryProtection | fl

AmpModeActive    : Advanced ECC
AmpModeStatus    : Advanced ECC
AmpModeSupported : {Advanced ECC,  Online Spare (Rank Sparing),  Intrasocket Mirroring}

PS C:\> $obj.MemoryDetailsSummary

CPUNumber             : 1
NumberOfSockets       : 12
TotalMemorySizeGB     : 16
OperatingFrequencyMHz : 2133
OperatingVoltage      : 1.20

CPUNumber             : 2
NumberOfSockets       : 12
TotalMemorySizeGB     : 16
OperatingFrequencyMHz : 2133
OperatingVoltage      : 1.20

PS C:\> $obj.MemoryDetails | fl

CPUNumber  : 1
MemoryData : {HPE.iLO.Response.RIBCL.iLO4.MemoryData, 
             HPE.iLO.Response.RIBCL.iLO4.MemoryData, HPE.iLO.Response.RIBCL.iLO4.MemoryData, 
             HPE.iLO.Response.RIBCL.iLO4.MemoryData...}

CPUNumber  : 2
MemoryData : {HPE.iLO.Response.RIBCL.iLO4.MemoryData, 
             HPE.iLO.Response.RIBCL.iLO4.MemoryData, HPE.iLO.Response.RIBCL.iLO4.MemoryData, 
             HPE.iLO.Response.RIBCL.iLO4.MemoryData...}

PS C:\> $obj.MemoryDetails[0].MemoryData

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : N/A
CapacityMiB         : 
HPSmartMemory       : N/A
MemoryDeviceType    : N/A
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : NotPresent
MinimumVoltageVolts : 
OperatingSpeedMHz   : 
PartNumber          : N/A
RankCount           : N/A

BaseModuleType      : RDIMM
CapacityMiB         : 16384
HPSmartMemory       : Yes
MemoryDeviceType    : DIMM DDR4
MemoryLocation      : HPE.iLO.Response.RIBCL.iLO4.MemoryLocation
DIMMStatus          : GoodInUse
MinimumVoltageVolts : 1.20
OperatingSpeedMHz   : 2133
PartNumber          : 752369-081
RankCount           : 2
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = Get-HPEiLOMemoryInfo -Connection $connection 

PS C:\> $obj

AdvancedMemoryProtection : HPE.iLO.Response.Redfish.AdvancedMemoryProtection
MemoryDetailsSummary     : {HPE.iLO.Response.Redfish.MemoryDetailsSummary, 
                           HPE.iLO.Response.Redfish.MemoryDetailsSummary}
MemoryDetails            : {HPE.iLO.Response.Redfish.MemoryDetails, 
                           HPE.iLO.Response.Redfish.MemoryDetails}
IP                       : 10.20.30.40
Hostname                 : abcd.com
Status                   : OK
StatusInfo               : 

PS C:\> $obj.AdvancedMemoryProtection | fl

AmpModeActive    : AdvancedECC
AmpModeStatus    : AdvancedECC
AmpModeSupported : {AdvancedECC, OnlineSpareRank, IntrasocketMirroring, A3DC}

PS C:\> $obj.MemoryDetailsSummary

CPUNumber             : 1
NumberOfSockets       : 12
TotalMemorySizeGB     : 8192
OperatingFrequencyMHz : 2400
OperatingVoltage      : 1200

CPUNumber             : 2
NumberOfSockets       : 12
TotalMemorySizeGB     : 0
OperatingFrequencyMHz : 2400
OperatingVoltage      : 1200

PS C:\> $obj.MemoryDetails | fl

CPUNumber  : 1
MemoryData : {HPE.iLO.Response.Redfish.MemoryData, HPE.iLO.Response.Redfish.MemoryData, 
             HPE.iLO.Response.Redfish.MemoryData, HPE.iLO.Response.Redfish.MemoryData...}

CPUNumber  : 2
MemoryData : {HPE.iLO.Response.Redfish.MemoryData, HPE.iLO.Response.Redfish.MemoryData, 
             HPE.iLO.Response.Redfish.MemoryData, HPE.iLO.Response.Redfish.MemoryData...}

PS C:\> $obj.MemoryDetails[0].MemoryData


BaseModuleType                : RDIMM
BusWidthBits                  : 72
CapacityMiB                   : 8192
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
DIMMStatus                    : GoodInUse
MinimumVoltageVolts           : 12
PredictedMediaLifeLeftPercent : 
ProductName                   : 
SPDBytes                      : 
RelatedPhysicalDIMMs          : 
RelatedBackupStores           : 
RelatedPowerBackupUnitBays    : 
OperatingMemoryModes          : 
OperatingSpeedMHz             : 2400
PartNumber                    : 
PersistentRegionSizeLimitMiB  : 
RankCount                     : 1
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 44288
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 2
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm2
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 3
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm3
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 4
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm4
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 5
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm5
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 6
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm6
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 7
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm7
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 8
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm8
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 9
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm9
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 10
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm10
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 11
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm11
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    : 

BaseModuleType                : 
BusWidthBits                  : 72
CapacityMiB                   : 0
DataWidthBits                 : 64
DeviceLocator                 : PROC 1 DIMM 12
DeviceID                      : 
ErrorCorrection               : MultiBitECC
FirmwareRevision              : 
Manufacturer                  : 
MemoryDeviceType              : DDR4
MemoryLocation                : HPE.iLO.Response.Redfish.MemoryLocation
MemoryMedia                   : {DRAM}
MemoryType                    : DRAM
Name                          : proc1dimm12
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
PersistentRegionSizeLimitMiB  : 
RankCount                     : 
SerialNumber                  : 
Status                        : OK
SubsystemDeviceID             : 
SubsystemVendorID             : 
VendorID                      : 0
VolatileRegionSizeLimitMiB    :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = connect-hpeilo 10.20.30.40 admin admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOMemoryInfo

PS C:\> $out

MemoryComponent : {HPE.iLO.Response.RIBCL.MemoryComponent, 
                  HPE.iLO.Response.RIBCL.MemoryComponent, 
                  HPE.iLO.Response.RIBCL.MemoryComponent, 
                  HPE.iLO.Response.RIBCL.MemoryComponent...}
IP              : 10.20.30.40
Hostname        : bl460cgen7-01.powershvpn.com
Status          : OK
StatusInfo      : 

PS C:\> $out.MemoryComponent | fl

MemoryLocation : PROC 1 DIMM 1D
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 1 DIMM 2A
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333 

MemoryLocation : PROC 1 DIMM 3E
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 1 DIMM 4B
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333 

MemoryLocation : PROC 1 DIMM 5F
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 1 DIMM 6C
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333 

MemoryLocation : PROC 2 DIMM 1D
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 2 DIMM 2A
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333 

MemoryLocation : PROC 2 DIMM 3E
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 2 DIMM 4B
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333 

MemoryLocation : PROC 2 DIMM 5F
MemorySizeMB   : Not Installed
MemorySpeedMHz : 0 

MemoryLocation : PROC 2 DIMM 6C
MemorySizeMB   : 8192 
MemorySpeedMHz : 1333
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Get-HPEiLOMemoryInfo -Connection $connection | fl


AdvancedMemoryProtection : HPE.iLO.Response.RIBCL.iLO4.AdvancedMemoryProtection
MemoryDetailsSummary     : {HPE.iLO.Response.RIBCL.iLO4.MemoryDetailsSummary, 
                           HPE.iLO.Response.RIBCL.iLO4.MemoryDetailsSummary}
MemoryDetails            : {HPE.iLO.Response.RIBCL.iLO4.MemoryDetails, 
                           HPE.iLO.Response.RIBCL.iLO4.MemoryDetails}
IP                       : 10.20.30.40
Hostname                 : abc.com
Status                   : OK
StatusInfo               : 

AdvancedMemoryProtection : HPE.iLO.Response.RIBCL.iLO4.AdvancedMemoryProtection
MemoryDetailsSummary     : {HPE.iLO.Response.RIBCL.iLO4.MemoryDetailsSummary, 
                           HPE.iLO.Response.RIBCL.iLO4.MemoryDetailsSummary}
MemoryDetails            : {HPE.iLO.Response.RIBCL.iLO4.MemoryDetails, 
                           HPE.iLO.Response.RIBCL.iLO4.MemoryDetails}
IP                       : 10.20.30.41
Hostname                 : abcd.com
Status                   : OK
StatusInfo               : 

AdvancedMemoryProtection : HPE.iLO.Response.Redfish.AdvancedMemoryProtection
MemoryDetailsSummary     : {HPE.iLO.Response.Redfish.MemoryDetailsSummary, 
                           HPE.iLO.Response.Redfish.MemoryDetailsSummary}
MemoryDetails            : {HPE.iLO.Response.Redfish.MemoryDetails, 
                           HPE.iLO.Response.Redfish.MemoryDetails}
IP                       : 10.20.30.42
Hostname                 : abcd.com
Status                   : OK
StatusInfo               :
```

This example shows the output with an array of iLO connection objects passed as named parameter.

### EXAMPLE 5
```
PS C:\> $con = Connect-HPEiLO 192.168.10.42 admin admin123 -DisableCertificateAuthentication

PS C:\> $s = $con | Get-HPEiLOMemoryInfo

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

Gets new memory details added in iLO5.

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

### HPE.iLO.Response.RIBCL.MemoryInfo[] or HPE.iLO.Response.Redfish.MemoryInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

