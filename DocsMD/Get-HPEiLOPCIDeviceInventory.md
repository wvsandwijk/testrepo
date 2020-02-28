---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOPCIDeviceInventory

## SYNOPSIS
Gets the PCI device Inventory information.

## SYNTAX

```
Get-HPEiLOPCIDeviceInventory [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOPCIDeviceInventory cmdlet gets the PCI Device Inventory information.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOPCIDeviceInventory

PS C:\> $out

PCIDevice  : {HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice, 
             HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice...}
IP         : 10.20.30.1
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PS C:\> $out.PCIDevice

BayNumber         : 
BusNumber         : 
ClassCode         : 2
DeviceID          : 5719
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Embedded LOM
EnclosureNumber   : 
FunctionNumber    : 
Id                : 1
LocationString    : Embedded LOM 1
Name              : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
SegmentNumber     : 
StructuredName    : NIC.LOM.1.1
SubclassCode      : 0
SubsystemDeviceID : 8894
SubsystemVendorID : 4156
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)
VendorID          : 5348

BayNumber         : 
BusNumber         : 
ClassCode         : 2
DeviceID          : 5719
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 2
DeviceType        : Embedded LOM
EnclosureNumber   : 
FunctionNumber    : 
Id                : 2
LocationString    : Embedded LOM 1
Name              : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
SegmentNumber     : 
StructuredName    : NIC.LOM.1.2
SubclassCode      : 0
SubsystemDeviceID : 8894
SubsystemVendorID : 4156
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x1)
VendorID          : 5348

BayNumber         : 
BusNumber         : 
ClassCode         : 2
DeviceID          : 5719
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 3
DeviceType        : Embedded LOM
EnclosureNumber   : 
FunctionNumber    : 
Id                : 3
LocationString    : Embedded LOM 1
Name              : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
SegmentNumber     : 
StructuredName    : NIC.LOM.1.3
SubclassCode      : 0
SubsystemDeviceID : 8894
SubsystemVendorID : 4156
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x2)
VendorID          : 5348

BayNumber         : 
BusNumber         : 
ClassCode         : 2
DeviceID          : 5719
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 4
DeviceType        : Embedded LOM
EnclosureNumber   : 
FunctionNumber    : 
Id                : 4
LocationString    : Embedded LOM 1
Name              : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
SegmentNumber     : 
StructuredName    : NIC.LOM.1.4
SubclassCode      : 0
SubsystemDeviceID : 8894
SubsystemVendorID : 4156
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x3)
VendorID          : 5348

BayNumber         : 
BusNumber         : 
ClassCode         : 1
DeviceID          : 41478
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Storage Controller
EnclosureNumber   : 
FunctionNumber    : 
Id                : 5
LocationString    : Embedded SATA Controller #1
Name              : Embedded SATA Controller #1
SegmentNumber     : 
StructuredName    : SATA.Emb.1.1
SubclassCode      : 4
SubsystemDeviceID : 229
SubsystemVendorID : 5520
UEFIDevicePath    : PciRoot(0x0)/Pci(0x17,0x0)
VendorID          : 32902

BayNumber         : 
BusNumber         : 
ClassCode         : 1
DeviceID          : 41558
DeviceInstance    : 2
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Storage Controller
EnclosureNumber   : 
FunctionNumber    : 
Id                : 6
LocationString    : Embedded SATA Controller #2
Name              : Embedded SATA Controller #2
SegmentNumber     : 
StructuredName    : SATA.Emb.2.1
SubclassCode      : 4
SubsystemDeviceID : 230
SubsystemVendorID : 5520
UEFIDevicePath    : PciRoot(0x0)/Pci(0x11,0x5)
VendorID          : 32902

BayNumber         : 
BusNumber         : 
ClassCode         : 1
DeviceID          : 6463
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Dynamic Storage Array Controller
EnclosureNumber   : 
FunctionNumber    : 
Id                : 7
LocationString    : Embedded Storage
Name              : HPE Smart Array S100i SR Gen10
SegmentNumber     : 
StructuredName    : SWRAID.Emb.1.1
SubclassCode      : 4
SubsystemDeviceID : 228
SubsystemVendorID : 5520
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x4)/Pci(0x0,0x7)
VendorID          : 4156

BayNumber         : 
BusNumber         : 
ClassCode         : 1
DeviceID          : 655
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Storage Array Controller
EnclosureNumber   : 
FunctionNumber    : 
Id                : 8
LocationString    : Embedded RAID 1
Name              : HPE Smart Array P816i-a SR Gen10
SegmentNumber     : 
StructuredName    : RAID.Emb.1.1
SubclassCode      : 7
SubsystemDeviceID : 4352
SubsystemVendorID : 4156
UEFIDevicePath    : PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)
VendorID          : 36869

BayNumber         : 0
BusNumber         : 
ClassCode         : 3
DeviceID          : 1336
DeviceInstance    : 0
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 0
DeviceType        : Unknown
EnclosureNumber   : 0
FunctionNumber    : 
Id                : 9
LocationString    : Embedded Video Controller
Name              : Embedded Video Controller
SegmentNumber     : 
StructuredName    : PCI.Unknown.1.1
SubclassCode      : 0
SubsystemDeviceID : 228
SubsystemVendorID : 5520
UEFIDevicePath    : PciRoot(0x0)/Pci(0x1C,0x4)/Pci(0x0,0x1)
VendorID          : 4139

BayNumber         : 
BusNumber         : 
ClassCode         : 255
DeviceID          : 65535
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Other PCI Device
EnclosureNumber   : 
FunctionNumber    : 
Id                : 10
LocationString    : Slot 1
Name              : Empty slot 1
SegmentNumber     : 
StructuredName    : PCI.Slot.1.1
SubclassCode      : 255
SubsystemDeviceID : 65535
SubsystemVendorID : 65535
UEFIDevicePath    : PciRoot(0x1)/Pci(0x0,0x0)/Pci(0x0,0x0)
VendorID          : 65535

BayNumber         : 
BusNumber         : 
ClassCode         : 255
DeviceID          : 65535
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Other PCI Device
EnclosureNumber   : 
FunctionNumber    : 
Id                : 11
LocationString    : Slot 1
Name              : Empty slot 3
SegmentNumber     : 
StructuredName    : PCI.Slot.1.1
SubclassCode      : 255
SubsystemDeviceID : 65535
SubsystemVendorID : 65535
UEFIDevicePath    : PciRoot(0x1)/Pci(0x0,0x0)/Pci(0x0,0x0)
VendorID          : 65535

BayNumber         : 
BusNumber         : 
ClassCode         : 255
DeviceID          : 65535
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Other PCI Device
EnclosureNumber   : 
FunctionNumber    : 
Id                : 12
LocationString    : Slot 1
Name              : Empty slot 2
SegmentNumber     : 
StructuredName    : PCI.Slot.1.1
SubclassCode      : 255
SubsystemDeviceID : 65535
SubsystemVendorID : 65535
UEFIDevicePath    : PciRoot(0x1)/Pci(0x0,0x0)/Pci(0x0,0x0)
VendorID          : 65535

BayNumber         : 
BusNumber         : 
ClassCode         : 255
DeviceID          : 65535
DeviceInstance    : 1
DeviceLocation    : 
DeviceNumber      : 
DeviceSubInstance : 1
DeviceType        : Other PCI Device
EnclosureNumber   : 
FunctionNumber    : 
Id                : 13
LocationString    : Slot 1
Name              : 
SegmentNumber     : 
StructuredName    : PCI.Slot.1.1
SubclassCode      : 255
SubsystemDeviceID : 65535
SubsystemVendorID : 65535
UEFIDevicePath    : PciRoot(0x1)/Pci(0x0,0x0)/Pci(0x0,0x0)
VendorID          : 65535
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOPCIDeviceInventory -Connection $connection

PCIDevice  : {HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice, 
             HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice...}
IP         : 10.20.30.1
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PCIDevice  : {HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice, 
             HPE.iLO.Response.Redfish.PCIDevice, HPE.iLO.Response.Redfish.PCIDevice...}
IP         : 10.20.30.2
Hostname   : xyz.example.com
Status     : OK
StatusInfo :
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.PCIDeviceInventory[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

