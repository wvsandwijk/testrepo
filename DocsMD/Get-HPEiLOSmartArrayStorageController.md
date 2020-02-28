---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSmartArrayStorageController

## SYNOPSIS
Gets the Smart Array Storage Controller detail.

## SYNTAX

```
Get-HPEiLOSmartArrayStorageController [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSmartArrayStorageController cmdlet gets the Smart Array Storage Controller detail.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSmartArrayStorageController

PS C:\> $out

Controllers               : {HPE.iLO.Response.RIBCL.Controller}
SmartArrayDiscoveryStatus : Discovery Complete
IP                        : 10.20.30.1
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

PS C:\> $out.Controllers

CacheMemorySizeMiB              : 2000
CacheModuleSerialNumber         : PDNLH0BRH9FBDI
CacheModuleStatus                             : HPE.iLO.Response.Redfish.Status
ControllerBoardStatus           : OK
Description                     : Controller on System Board
EncryptionEnabled               : False
EncryptionStandaloneModeEnabled : False
EncryptionSelfTestPassed        : True
EncryptionCSPTestPassed         : True
FirmwareVersion                 : 3.00
Model                           : Smart Array P440ar Controller
SerialNumber                    : PDNLH0BRH9FBDI
State                           : OK
LogicalDrives                   : {HPE.iLO.Response.RIBCL.LogicalDrive}
StorageEnclosures               : {HPE.iLO.Response.RIBCL.StorageEnclosure, 
                                  HPE.iLO.Response.RIBCL.StorageEnclosure}

PS C:\> $out.Controllers[0].LogicalDrives

Id                     : 01
CapacityMiB            : 1143808
Raid                   : 1
LogicalDriveEncryption : False
LogicalDriveType       : Data LUN
DataDrives             : {HPE.iLO.Response.RIBCL.DiskDrive, HPE.iLO.Response.RIBCL.DiskDrive}
State                  : OK

PS C:\> $out.Controllers[0].LogicalDrives[0].DataDrives

CapacityMiB     : 1143808
DiskDriveUse    : Data
EncryptedDrive  : False
FirmwareVersion : HPD6
Location        : Port 2I Box 3 Bay 7
CapacityGB      : 1200
MediaType       : HDD
Model           : EG1200FDNJT
SerialNumber    : L0HX90TK
State           : OK

PS C:\> $out.Controllers[0].StorageEnclosures | fl

DriveBayCount : 2
Location      : Port 1I Box 1
State         : OK
```

This cmdlet shows the usage of cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSmartArrayStorageController

PS C:\> $out

Id                                            : 0
AdapterType                                   : SmartArray
ArrayCount                                    : 
BackupPowerSourceStatus                       : Present
BootVolumePrimary                             : 
BootVolumeSecondary                           : 
CacheArrayCount                               : 
CacheLogicalDriveCount                        : 
CacheMemorySizeMiB                            : 2048
CacheModuleStatus                             : HPE.iLO.Response.Redfish.Status
CachePhysicalDriveCount                       : 
CurrentOperatingMode                          : RAID
CurrentParallelSurfaceScanCount               : 
DataLogicalDriveCount                         : 
DataPhysicalDriveCount                        : 
DegradedPerformanceOptimization               : 
Description                                   : HP Smart Storage Array 
                                                Controller View
DriveWriteCache                               : 
ElevatorSort                                  : 
EncryptionBootPasswordSet                     : 
EncryptionCryptoOfficerPasswordSet            : False
EncryptionEnabled                             : False
EncryptionFwLocked                            : False
EncryptionHasLockedVolumes                    : 
EncryptionHasLockedVolumesMissingBootPassword : False
EncryptionHasSuspendedVolumes                 : 
EncryptionKeySet                              : 
EncryptionLocalKeyCacheEnabled                : 
EncryptionMixedVolumesEnabled                 : False
EncryptionPhysicalDriveCount                  : 
EncryptionRecoveryParamsSet                   : 
EncryptionStandaloneModeEnabled               : False
EncryptionUserPasswordSet                     : 
ExpandPriority                                : 
ExternalPortCount                             : 0
FirmwareVersion                               : 3.00
FlexibleLatencySchedulerSetting               : 
HardwareRevision                              : B
InconsistencyRepairPolicy                     : 
internalPortCount                             : 2
IsBootController                              : 
Location                                      : Slot 0
LocationFormat                                : PCISlot
LogicalDriveCount                             : 
Manufacturer                                  : 
MaxParallelSurfaceScanCount                   : 
Model                                         : Smart Array P440ar Controller
Name                                          : HpSmartStorageArrayController
OperatingModeAfterReboot                      : 
ParallelSurfaceScanSupported                  : 
PhysicalDriveCount                            : 
PowerModeAfterReboot                          : 
PowerModeConfigured                           : 
PowerModeWarningChangedDrive                  : 
PowerModeWarningChangedMode                   : 
PowerModeWarningReboot                        : 
PowerModeWarningTemperature                   : 
PredictiveSpareRebuild                        : 
QueueDepth                                    : 
RebuildPriority                               : 
SerialNumber                                  : PDNLH0BRH9M63Y
SoftwareRaidHbaFirmwareRev                    : 
SoftwareRaidHbaModeOptionRomRev               : 
SparePhysicalDriveCount                       : 
SupportedOperatingModes                       : 
SupportedPowerModes                           : 
SupportedRaidLevels                           : 
SurfaceScanAnalysisPriority                   : 
UnassignedPhysicalDriveCount                  : 
LogicalDrives                                 : {HPE.iLO.Response.REST.LogicalD
                                                rive}
StorageEnclosures                             : {HpSmartStorageEnclosure, 
                                                HpSmartStorageEnclosure}
PhysicalDrives                                : {HPE.iLO.Response.REST.DiskDriv
                                                e, HPE.iLO.Response.REST.DiskDr
                                                ive}
UnconfiguredDrives                            : 
State                                         : OK
Status                                        : HPE.iLO.Response.REST.Status

PS C:\> $out.Controllers[0].StorageEnclosures

Id                   : 0
Description          : HP Smart Storage Enclosure View
DoorLockLED          : 
DriveBayCount        : 4
EnclosureLogicalID   : 
FaultLED             : 
FirmwareVersion      : 
IndictorLED          : 
Location             : 1I:0
LocationFormat       : Controller:Box
Manufacturer         : 
Model                : 
Name                 : HpSmartStorageEnclosure
PartNumber           : 
SerialNumber         : 
SKU                  : 
SubEnclosureLocation : 
State                : OK
Status               : HPE.iLO.Response.REST.Status

Id                   : 1
Description          : HP Smart Storage Enclosure View
DoorLockLED          : 
DriveBayCount        : 4
EnclosureLogicalID   : 
FaultLED             : 
FirmwareVersion      : 
IndictorLED          : 
Location             : 2I:3
LocationFormat       : Controller:Box
Manufacturer         : 
Model                : 
Name                 : HpSmartStorageEnclosure
PartNumber           : 
SerialNumber         : 
SKU                  : 
SubEnclosureLocation : 
State                : OK
Status               : HPE.iLO.Response.REST.Status

PS C:\> $out.Controllers[0].LogicalDrives

Id                                           : 1
BlockSizeBytes                               : 
CapacityMib                                  : 1144609
Description                                  : HP Smart Storage Logical Drive 
                                               View
DriveAccessName                              : 
DriveGeometryCylinders                       : 
DriveGeometryHeads                           : 
DriveGeometrySectors                         : 
LegacyBootPriority                           : 
LogicalDriveEncryption                       : False
LogicalDriveEncryptionDataKeysVolatile       : 
LogicalDriveEncryptionDataKeysVolatileBackup : 
LogicalDriveEncryptionDataKeysVolatileStatus : 
LogicalDriveName                             : 004C5287PDNLH0BRH9M63YB739
LogicalDriveNumber                           : 1
LogicalDriveType                             : Data
Name                                         : HpSmartStorageLogicalDrive
ParityInitializationCompletionPercentage     : 
ParityInitializationType                     : 
PartitionInformation                         : 
Raid                                         : 1
RebuildCompletionPercentage                  : 
SmartCacheState                              : 
StripSizeBytes                               : 
StripeSizeBytes                              : 262144
TransformationCompletionPercentage           : 
VolumeUniqueIdentifier                       : 600508B1001C2C31E7BDC641BCB8BBAA
DataDrives                                   : {HPE.iLO.Response.REST.DiskDrive
                                               , 
                                               HPE.iLO.Response.REST.DiskDrive}
TransientDataDrives                          : 
ActiveSpareDrives                            : 
StandbySpareDrives                           : 
State                                        : OK
Status                                       : HPE.iLO.Response.REST.Status
```

This cmdlet shows the usage of cmdlet on iLO 4 on a Gen 9 server with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSmartArrayStorageController

PS C:\> $out

Controllers               : {HPE.iLO.Response.Redfish.SmartArrayController}
SmartArrayDiscoveryStatus : Complete
IP                        : 10.20.30.1
Hostname                  : xyz.example.com
Status                    : OK
StatusInfo                : 

PS C:\> $out.Controllers

Id                                            : 0
AdapterType                                   : SmartArray
ArrayCount                                    : 
BackupPowerSourceStatus                       : Present
BootVolumePrimary                             : 
BootVolumeSecondary                           : 
CacheArrayCount                               : 
CacheLogicalDriveCount                        : 
CacheMemorySizeMiB                            : 1024
CacheModuleSerialNumber                       :   
CacheModuleStatus                             : HPE.iLO.Response.Redfish.Status             
ControllerBoardStatus                         : OK
CachePhysicalDriveCount                       : 
ControllerPartNumber                          : 836263-001
ControllerBoard                               : HPE.iLO.Response.Redfish.ControllerBoard
CurrentOperatingMode                          : Mixed
CurrentParallelSurfaceScanCount               : 
DataLogicalDriveCount                         : 
DataPhysicalDriveCount                        : 
DegradedPerformanceOptimization               : 
Description                                   : HPE Smart Storage Array Controller View
DriveWriteCache                               : Disabled
ElevatorSort                                  : 
EncryptionBootPasswordSet                     : 
EncryptionCryptoOfficerPasswordSet            : False
EncryptionCSPTestPassed                       : True
EncryptionEnabled                             : False
EncryptionFwLocked                            : False
EncryptionHasLockedVolumes                    : 
EncryptionHasLockedVolumesMissingBootPassword : False
EncryptionHasSuspendedVolumes                 : 
EncryptionKeySet                              : 
EncryptionLocalKeyCacheEnabled                : 
EncryptionMixedVolumesEnabled                 : False
EncryptionPhysicalDriveCount                  : 
EncryptionRecoveryParamsSet                   : 
EncryptionStandaloneModeEnabled               : False
EncryptionSelfTestPassed                      : True
EncryptionUserPasswordSet                     : 
ExpandPriority                                : 
ExternalPortCount                             : 0
FirmwareVersion                               : 1.00
FlexibleLatencySchedulerSetting               : 
HardwareRevision                              : B
InconsistencyRepairPolicy                     : 
internalPortCount                             : 1
IsBootController                              : 
Location                                      : Slot 0
LocationFormat                                : PCISlot
LogicalDriveCount                             : 
Manufacturer                                  : 
MaxParallelSurfaceScanCount                   : 
Model                                         : HPE Smart Array P204i-b SR Gen10
Name                                          : HpeSmartStorageArrayController
WriteCacheWithoutBackupPowerEnabled           : False
OperatingModeAfterReboot                      : 
ParallelSurfaceScanSupported                  : 
PhysicalDriveCount                            : 
PowerModeAfterReboot                          : 
PowerModeConfigured                           : 
PowerModeWarningChangedDrive                  : 
PowerModeWarningChangedMode                   : 
PowerModeWarningReboot                        : 
PowerModeWarningTemperature                   : 
PredictiveSpareRebuild                        : 
QueueDepth                                    : 
ReadCachePercent                              : 10
RebuildPriority                               : 
SerialNumber                                  : PEYHFX5LM6002W
SoftwareRaidHbaFirmwareRev                    : 
SoftwareRaidHbaModeOptionRomRev               : 
SparePhysicalDriveCount                       : 
SupportedOperatingModes                       : 
SupportedPowerModes                           : 
SupportedRaidLevels                           : 
SurfaceScanAnalysisPriority                   : 
UnassignedPhysicalDriveCount                  : 
WriteCacheBypassThresholdKB                   : 1040
LogicalDrives                                 : {HPE.iLO.Response.Redfish.LogicalDrive}
StorageEnclosures                             : {HpSmartStorageEnclosure}
PhysicalDrives                                : {HPE.iLO.Response.Redfish.DiskDrive, 
                                                HPE.iLO.Response.Redfish.DiskDrive}
UnconfiguredDrives                            : {HPE.iLO.Response.Redfish.DiskDrive}
State                                         : OK
Status                                        : HPE.iLO.Response.Redfish.Status

PS C:\> $out.Controllers[0].ControllerBoard.Status | fl

Health       : OK
State        : 
HealthRollUp : 

PS C:\> $out.Controllers[0].StorageEnclosures

Id                   : 0
Description          : HPE Smart Storage Enclosure View
DoorLockLED          : 
DriveBayCount        : 4
EnclosureLogicalID   : 
FaultLED             : 
FirmwareVersion      : 
IndictorLED          : 
Location             : 1I:1
LocationFormat       : Controller:Box
Model                : 
Name                 : HpSmartStorageEnclosure
SerialNumber         : 
SubEnclosureLocation : 
State                : OK
Status               : HPE.iLO.Response.Redfish.Status

PS C:\> $out.Controllers[0].PhysicalDrives

Id                                : 0
BlockSizeBytes                    : 512
CapacityGB                        : 1000
CapacityLogicalBlocks             : 1953525168
CapacityMiB                       : 953869
CarrierApplicationVersion         : 11
CarrierAuthenticationStatus       : OK
CurrentTemperatureCelsius         : 20
Description                       : HPE Smart Storage Disk Drive View
DiskDriveStatusReasons            : {None}
DiskDriveUse                      : Data
DriveConfiguration                : HPG5
EncryptedDrive                    : False
EraseCompletionPercentage         : 
ErasePattern                      : 
FirmwareVersion                   : HPG5
IndicatorLED                      : 
InterfaceSpeedMbps                : 6000
InterfaceType                     : SATA
LegacyBootPriority                : Primary
Location                          : P1:1:1
LocationFormat                    : ControllerPort:Box:Bay
Manufacturer                      : 
MaximumTemperatureCelsius         : 25
MediaType                         : HDD
MinimumGoodFirmwareVersion        : 
Model                             : MM1000GEFQV
Name                              : HpeSmartStorageDiskDrive
NativeBlockSizeBytes              : 
PhyCount                          : 
PortCount                         : 
PowerOnHours                      : 
RotationalSpeedRpm                : 7200
SSDEnduranceUtilizationPercentage : 
SerialNumber                      : W470SRXX
SpareRebuildMode                  : 
TransferSpeedMbps                 : 
WWID                              : 
State                             : OK
Status                            : HPE.iLO.Response.Redfish.Status

PS C:\> $out.Controllers[0].UnconfiguredDrives

Id                                : 2
BlockSizeBytes                    : 512
CapacityGB                        : 1200
CapacityLogicalBlocks             : 2344225968
CapacityMiB                       : 1144641
CarrierApplicationVersion         : 11
CarrierAuthenticationStatus       : OK
CurrentTemperatureCelsius         : 24
Description                       : HPE Smart Storage Disk Drive View
DiskDriveStatusReasons            : {None}
DiskDriveUse                      : Raw
DriveConfiguration                : HPD6
EncryptedDrive                    : False
EraseCompletionPercentage         : 
ErasePattern                      : 
FirmwareVersion                   : HPD6
IndicatorLED                      : 
InterfaceSpeedMbps                : 6000
InterfaceType                     : SAS
LegacyBootPriority                : Primary
Location                          : P1:1:2
LocationFormat                    : ControllerPort:Box:Bay
Manufacturer                      : 
MaximumTemperatureCelsius         : 43
MediaType                         : HDD
MinimumGoodFirmwareVersion        : 
Model                             : EG1200FDNJT
Name                              : HpeSmartStorageDiskDrive
NativeBlockSizeBytes              : 
PhyCount                          : 
PortCount                         : 
PowerOnHours                      : 
RotationalSpeedRpm                : 10000
SSDEnduranceUtilizationPercentage : 
SerialNumber                      : L0HWMGXK
SpareRebuildMode                  : 
TransferSpeedMbps                 : 
WWID                              : 
State                             : OK
Status                            : HPE.iLO.Response.Redfish.Status
```

This cmdlet shows the usage of the cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOSmartArrayStorageController -Connection $connection

Controllers               : {HPE.iLO.Response.RIBCL.Controller}
SmartArrayDiscoveryStatus : Discovery Complete
IP                        : 10.20.30.1
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

Controllers               : {HPE.iLO.Response.Redfish.SmartArrayController}
SmartArrayDiscoveryStatus : Complete
IP                        : 10.20.30.2
Hostname                  : xyz.example.com
Status                    : OK
StatusInfo                :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.SmartArrayStorageController[] or  HPE.iLO.Response.REST.SmartArrayStorageController[] or HPE.iLO.Response.Redfish.SmartArrayStorageController[]
## NOTES
WARNING - After updating the iLO firmware, Do a server reboot, as the server will not reboot automatically.
Server reboot is required to fetch the smart array controller details after iLO firmware update.
In case of iLO 4 firmware version 2.40 or above, the cmdlet returns a detailed information from REST interface.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

