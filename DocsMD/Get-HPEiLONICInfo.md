---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLONICInfo

## SYNOPSIS
Gets the NIC details for the system NIC and the iLO NIC.

## SYNTAX

```
Get-HPEiLONICInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLONICInfo cmdlet gets the NIC details of the system NIC and the iLO NIC.
These details include IP address, MAC Address, network port, and port description for both the system NICs and the iLO NICs.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLONICInfo

EthernetInterface : {HPE.iLO.Response.RIBCL.EthernetInterface, HPE.iLO.Response.RIBCL.EthernetInterface}
NetworkAdapter    : {HPE.iLO.Response.RIBCL.NetworkAdapter, HPE.iLO.Response.RIBCL.NetworkAdapter, 
                    HPE.iLO.Response.RIBCL.NetworkAdapter}
IP                : 10.20.30.2
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

PS C:\> $out.EthernetInterface

NetworkPort     : Port 1
PortDescription : iLO 4
Location        : Embedded
IPAddress       : 10.20.30.2
MACAddress      : 3c:a8:2a:19:e1:5c
Status          : OK

NetworkPort     : Port 2
PortDescription : iLO 4
Location        : Embedded
IPAddress       : Unknown
MACAddress      : 3c:a8:2a:19:e1:5d
Status          : Disabled

PS C:\> $out.NetworkAdapter | fl


Name  : Broadcom NetXtreme Gigabit Ethernet
Ports : {HPE.iLO.Response.RIBCL.Ports, HPE.iLO.Response.RIBCL.Ports, HPE.iLO.Response.RIBCL.Ports, 
        HPE.iLO.Response.RIBCL.Ports}

Name  : HPE FlexFabric 10Gb 2-port 533FLR-T Adapter
Ports : {HPE.iLO.Response.RIBCL.Ports, HPE.iLO.Response.RIBCL.Ports}

Name  : Intel(R) I350 Gigabit Network Connection
Ports : {HPE.iLO.Response.RIBCL.Ports, HPE.iLO.Response.RIBCL.Ports}

PS C:\> $out.NetworkAdapter[0].Ports

NetworkPort : Port 1
Location    : Embedded
IPAddress   : N/A
MACAddress  : 3c:a8:2a:0a:af:3c
Status      : Unknown

NetworkPort : Port 2
Location    : Embedded
IPAddress   : N/A
MACAddress  : 3c:a8:2a:0a:af:3d
Status      : Unknown

NetworkPort : Port 3
Location    : Embedded
IPAddress   : N/A
MACAddress  : 3c:a8:2a:0a:af:3e
Status      : Unknown

NetworkPort : Port 4
Location    : Embedded
IPAddress   : 169.254.168.129
MACAddress  : 3c:a8:2a:0a:af:3f
Status      : OK
```

This example shows the usage of the cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLONICInfo

EthernetInterface : {HPE.iLO.Response.Redfish.EthernetInterface, HPE.iLO.Response.Redfish.EthernetInterface}
NetworkAdapter    : {HPE.iLO.Response.Redfish.NetworkAdapter}
IP                : 10.20.30.2
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

PS C:\> $out.EthernetInterface

Name            : Manager Dedicated Network Interface
InterfaceType   : Dedicated
IPv4Address     : 10.20.30.2
IPv6Address     : FE80::FE15:B4FF:FE97:2D88
MACAddress      : FC:15:B4:97:2D:88
NICEnabled      : Yes
NICSupportsIPv6 : No
Status          : HPE.iLO.Response.Redfish.Status

Name            : Manager Shared Network Interface
InterfaceType   : Shared
IPv4Address     : 10.20.30.2
IPv6Address     : 
MACAddress      : FC:15:B4:97:2D:89
NICEnabled      : No
NICSupportsIPv6 : Yes
Status          : HPE.iLO.Response.Redfish.Status

PS C:\> $out.NetworkAdapter

Name           : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
Id             : 1
PartNumber     : 
SerialNumber   : 
Firmware       : 20.6.315
StructuredName : NIC.LOM.1.1
UEFIDevicePath : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)
Ports          : {, , , }
FcPorts        : 
Status         : HPE.iLO.Response.Redfish.Status
```

This example shows the usage of cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> Get-HPEiLONICInfo -Connection $connection 

EthernetInterface : {HPE.iLO.Response.RIBCL.EthernetInterface, HPE.iLO.Response.RIBCL.EthernetInterface}
NetworkAdapter    : {HPE.iLO.Response.RIBCL.NetworkAdapter, HPE.iLO.Response.RIBCL.NetworkAdapter, 
                    HPE.iLO.Response.RIBCL.NetworkAdapter}
IP                : 10.20.30.1
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

EthernetInterface : {HPE.iLO.Response.Redfish.EthernetInterface, HPE.iLO.Response.Redfish.EthernetInterface}
NetworkAdapter    : {HPE.iLO.Response.Redfish.NetworkAdapter}
IP                : 10.20.30.2
Hostname          : xyz.example.com
Status            : OK
StatusInfo        :
```

This example shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.NICInfo[] or HPE.iLO.Response.Redfish.NICInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

