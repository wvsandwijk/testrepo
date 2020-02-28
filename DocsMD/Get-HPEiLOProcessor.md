---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOProcessor

## SYNOPSIS
Gets the processor details for the host server.

## SYNTAX

```
Get-HPEiLOProcessor [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOProcessor cmdlet gets the processor health details of the host server where the iLO is located.
These details include execution technology, cache details, label, memory technology, name, CPU details, and status of the processor.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOProcessor

PS C:\> $obj | fl

Processor  : {HPE.iLO.Response.RIBCL.Processor, HPE.iLO.Response.RIBCL.Processor}
IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PS C:\> $obj.Processor

ID               : 1
ManufacturerName : Intel(R)
Model            : Intel(R) Xeon(R) CPU E5-2650 v3 @ 2.30GHz
ProcessorType    : CPU
ProcessorStatus  : OK
CoresEnabled     : 10
RatedSpeedMHz    : 2300
Socket           : Proc 1
TotalCores       : 10
TotalThreads     : 20
Characteristics  : {64-bit}
Cache            : {HPE.iLO.Response.RIBCL.Cache, HPE.iLO.Response.RIBCL.Cache, 
                   HPE.iLO.Response.RIBCL.Cache}

ID               : 2
ManufacturerName : Intel(R)
Model            : Intel(R) Xeon(R) CPU E5-2650 v3 @ 2.30GHz
ProcessorType    : CPU
ProcessorStatus  : OK
CoresEnabled     : 10
RatedSpeedMHz    : 2300
Socket           : Proc 2
TotalCores       : 10
TotalThreads     : 20
Characteristics  : {64-bit}
Cache            : {HPE.iLO.Response.RIBCL.Cache, HPE.iLO.Response.RIBCL.Cache, 
                   HPE.iLO.Response.RIBCL.Cache}

PS C:\> $obj.Processor[0].Cache | fl

Name            : L1-Cache
Location        : Internal
InstalledSizeKB : 128

Name            : L2-Cache
Location        : Internal
InstalledSizeKB : 1024

Name            : L3-Cache
Location        : Internal
InstalledSizeKB : 12288
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOProcessor

PS C:\> $obj | fl

Processor  : {HPE.iLO.Response.Redfish.Processor}
IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PS C:\> $obj.Processor

InstructionSet        : x86-64
MaxSpeedMHz           : 4000
Name                  : Processors
AssetTag              : 
ConfigStatus          : HPE.iLO.Response.Redfish.ConfigStatus
ExternalClockMHz      : 100
MicrocodePatches      : {HPE.iLO.Response.Redfish.MicrocodePatch, 
                        HPE.iLO.Response.Redfish.MicrocodePatch, 
                        HPE.iLO.Response.Redfish.MicrocodePatch}
PartNumber            : 
SerialNumber          : 
VoltageVoltsX10       : 16
ProcessorArchitecture : x86
ProcessorID           : HPE.iLO.Response.Redfish.ProcessorID
ID                    : 1
ManufacturerName      : Intel(R) Corporation
Model                 : Intel(R) Genuine processor
ProcessorType         : CPU
ProcessorStatus       : OK
CoresEnabled          : 4
RatedSpeedMHz         : 2200
Socket                : Proc 1
TotalCores            : 4
TotalThreads          : 8
Characteristics       : {64Bit, MultiCore, HwThread, ExecuteProtection...}
Cache                 : {HPE.iLO.Response.Redfish.Cache, HPE.iLO.Response.Redfish.Cache, 
                        HPE.iLO.Response.Redfish.Cache}

PS C:\> $obj.Processor[0].ConfigStatus | fl

IsPopulated : Yes
State       : Enabled

PS C:\> $obj.Processor[0].Cache | fl

Name              : L1-Cache
Location          : Internal
InstalledSizeKB   : 256
Associativity     : 8waySetAssociative
CacheSpeedns      : 0
CurrentSRAMType   : {Synchronous}
EccType           : SingleBitECC
MaximumSizeKB     : 256
Policy            : WriteBack
IsSocketed        : No
SupportedSRAMType : {Synchronous}
SystemCacheType   : Unified

Name              : L2-Cache
Location          : Internal
InstalledSizeKB   : 4096
Associativity     : 16waySetAssociative
CacheSpeedns      : 0
CurrentSRAMType   : {Synchronous}
EccType           : SingleBitECC
MaximumSizeKB     : 4096
Policy            : Varies
IsSocketed        : No
SupportedSRAMType : {Synchronous}
SystemCacheType   : Unified

Name              : L3-Cache
Location          : Internal
InstalledSizeKB   : 8448
Associativity     : FullyAssociative
CacheSpeedns      : 0
CurrentSRAMType   : {Synchronous}
EccType           : SingleBitECC
MaximumSizeKB     : 8448
Policy            : Varies
IsSocketed        : No
SupportedSRAMType : {Synchronous}
SystemCacheType   : Unified

PS C:\> $obj.Processor[0].MicrocodePatches | fl

CPUID   : 0x00050651
Date    : 2/8/2016 12:00:00 AM
PatchID : 0x8000002B

CPUID   : 0x00050652
Date    : 12/2/2016 12:00:00 AM
PatchID : 0x80000034

CPUID   : 0x00050654
Date    : 4/28/2017 12:00:00 AM
PatchID : 0x0200001C
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Get-HPEiLOProcessor -Connection $connection | fl

Processor  : {HPE.iLO.Response.RIBCL.Processor, HPE.iLO.Response.RIBCL.Processor}
IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo : 

Processor  : {HPE.iLO.Response.RIBCL.Processor, HPE.iLO.Response.RIBCL.Processor}
IP         : 10.20.30.41
Hostname   : abcd.com
Status     : OK
StatusInfo : 

Processor  : {HPE.iLO.Response.Redfish.Processor}
IP         : 10.20.30.42
Hostname   : abcd.com
Status     : OK
StatusInfo :
```

This cmdlet shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.ProcessorInfo[] or HPE.iLO.Response.Redfish.ProcessorInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

