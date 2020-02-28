---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOUSBDevice

## SYNOPSIS
Gets the USB device detail.

## SYNTAX

```
Get-HPEiLOUSBDevice [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOUSBDevice cmdlet gets the USB device detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOUSBDevice

PS C:\> $out

USBDeviceDetail : {HPE.iLO.Response.Redfish.USBDeviceDetail, HPE.iLO.Response.Redfish.USBDeviceDetail, 
                  HPE.iLO.Response.Redfish.USBDeviceDetail}
IP              : 10.20.30.1
Hostname        : abcd.com
Status          : OK
StatusInfo      : 

PS C:\> $out.USBDeviceDetail

Name             : USB Device
DeviceClass      : 9
DeviceCapacityMB : 0
DeviceSubClass   : 0
DeviceName       : Avocent General Purpose USB Hub
DeviceProtocol   : 1
Location         : Rear USB 1
ProductID        : 528
StructuredName   : Unknown.Unknown.1.2
UEFIDevicePath   : PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)
VendorID         : 8855

Name             : USB Device
DeviceClass      : 3
DeviceCapacityMB : 0
DeviceSubClass   : 1
DeviceName       : AVOCENT HP AF628A USBFS (PACER-I
DeviceProtocol   : 1
Location         : Rear USB 1
ProductID        : 2326
StructuredName   : Unknown.Unknown.1.3
UEFIDevicePath   : PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x0,0x0)
VendorID         : 1572

Name             : USB Device
DeviceClass      : 3
DeviceCapacityMB : 0
DeviceSubClass   : 1
DeviceName       : AVOCENT HP AF628A USBFS (PACER-I
DeviceProtocol   : 2
Location         : Rear USB 1
ProductID        : 2326
StructuredName   : Unknown.Unknown.1.4
UEFIDevicePath   : PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x0,0x1)
VendorID         : 1572
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOUSBDevice -Connection $connection

USBDeviceDetail : {HPE.iLO.Response.Redfish.USBDeviceDetail, HPE.iLO.Response.Redfish.USBDeviceDetail, 
                  HPE.iLO.Response.Redfish.USBDeviceDetail}
IP              : 10.20.30.40
Hostname        : abcd.com
Status          : OK
StatusInfo      : 

USBDeviceDetail : {HPE.iLO.Response.Redfish.USBDeviceDetail, HPE.iLO.Response.Redfish.USBDeviceDetail, 
                  HPE.iLO.Response.Redfish.USBDeviceDetail}
IP              : 10.20.30.41
Hostname        : xyz.example.com
Status          : OK
StatusInfo      :
```

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

### HPE.iLO.Response.Redfish.USBDevice[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

