---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Read-HPEiLOSMBIOSRecord

## SYNOPSIS
Reads SMBIOS records data.

## SYNTAX

```
Read-HPEiLOSMBIOSRecord -SMBIOSRecord <HostDataInfo[]> [<CommonParameters>]
```

## DESCRIPTION
Reads the SMBIOS records from the output of the Get-HPEiLOSMBIOSData cmdlet.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $rec = $smbios |  Read-HPEiLOSMBIOSRecord 
PS C:\Windows\system32> $rec[2].SMBIOSRecord | ft

Type StructureName                     Handle Manufacturer ProductName           Version SerialNumber     UUID                                 WakeupType  SKUNumber
---- -------------                     ------ ------------ -----------           ------- ------------     ----                                 ----------  ---------
   1 SystemInformation                     95 HPE          ProLiant BL460c Gen10         123              74736554-0000-3231-3300-000000000000 PowerSwitch Test     
   2 BaseboardInformation                 113 HPE          ProLiant BL460c Gen10                                                                                    
   3 SystemEnclosureOrChassis            9217                                                                                                                       
   3 SystemEnclosureOrChassis             100 HPE                                        123                                                                        
   4 ProcessorInformation                  73                                                                                                                       
   4 ProcessorInformation                  74                                                                                                                       
   7 CacheInformation                      70                                                                                                                       
   7 CacheInformation                      71                                                                                                                       
   7 CacheInformation                      72                                                                                                                       
   8 PortConnectorInformation               6                                                                                                                       
   8 PortConnectorInformation               7                                                                                                                       
   8 PortConnectorInformation               8                                                                                                                       
   8 PortConnectorInformation               9                                                                                                                       
   8 PortConnectorInformation              10                                                                                                                       
   8 PortConnectorInformation              11                                                                                                                       
   9 SystemSlots                          128                                                                                                                       
   9 SystemSlots                          129                                                                                                                       
   9 SystemSlots                          130                                                                                                                       
   9 SystemSlots                          131                                                                                                                       
  11 OEMStrings                           101                                                                                                                       
  16 PhysicalMemoryArray                   12                                                                                                                       
  16 PhysicalMemoryArray                   13                                                                                                                       
  17 MemoryDevice                          22 UNKNOWN                                                                                                               
  17 MemoryDevice                          23 UNKNOWN                                                                                                               
  17 MemoryDevice                          24 UNKNOWN                                                                                                               
  17 MemoryDevice                          25 UNKNOWN                                                                                                               
  17 MemoryDevice                          26 UNKNOWN                                                                                                               
  17 MemoryDevice                          27 UNKNOWN                                                                                                               
  17 MemoryDevice                          28 UNKNOWN                                                                                                               
  17 MemoryDevice                          29 UNKNOWN                                                                                                               
  17 MemoryDevice                          30 UNKNOWN                                                                                                               
  17 MemoryDevice                          31 UNKNOWN                                                                                                               
  17 MemoryDevice                          32 UNKNOWN                                                                                                               
  17 MemoryDevice                          33 UNKNOWN                                                                                                               
  17 MemoryDevice                          34 UNKNOWN                                                                                                               
  17 MemoryDevice                          35 UNKNOWN                                                                                                               
  17 MemoryDevice                          36 UNKNOWN                                                                                                               
  17 MemoryDevice                          37 UNKNOWN                                                                                                               
  19 MemoryArrayMappedAddress              20                                                                                                                       
  19 MemoryArrayMappedAddress              21                                                                                                                       
  26 VoltageProbe                         256                                                                                                                       
  32 SystemBootInformation                133                                                                                                                       
  38 IPMIDeviceInformation                 14                                                                                                                       
  41 OnboardDevicesExtendedInformation    115                                                                                                                       
  41 OnboardDevicesExtendedInformation    116                                                                                                                       
  41 OnboardDevicesExtendedInformation    117                                                                                                                       
  41 OnboardDevicesExtendedInformation    118                                                                                                                       
  41 OnboardDevicesExtendedInformation    119                                                                                                                       
  41 OnboardDevicesExtendedInformation    120                                                                                                                       
  41 OnboardDevicesExtendedInformation    121                                                                                                                       
  41 OnboardDevicesExtendedInformation    122                                                                                                                       
  41 OnboardDevicesExtendedInformation    123                                                                                                                       
  41 OnboardDevicesExtendedInformation    124                                                                                                                       
  41 OnboardDevicesExtendedInformation    125                                                                                                                       
  41 OnboardDevicesExtendedInformation    126                                                                                                                       
  41 OnboardDevicesExtendedInformation    127
```

## PARAMETERS

### -SMBIOSRecord
@{Text=}

```yaml
Type: HostDataInfo[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.SMBIOSDataCollection[]
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

[Get-HPEiLOSMBIOSData]()

[http://www.hpe.com/servers/powershell]()

