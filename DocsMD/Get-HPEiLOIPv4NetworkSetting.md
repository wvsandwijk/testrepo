---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOIPv4NetworkSetting

## SYNOPSIS
Gets the current iLO IPv4 network settings.

## SYNTAX

```
Get-HPEiLOIPv4NetworkSetting [-Connection] <Connection[]> [-InterfaceType <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOIPv4NetworkSetting cmdlet gets the current iLO IPv4 network settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\>$out = ,$connection | Get-HPEiLOIPv4NetworkSetting

PS C:\> $out

IPv4Address          : 10.20.30.2
IPv4SubnetMask       : 255.255.0.0
IPv4Gateway          : 0.0.0.0
IPv4StaticRoute      : {HPE.iLO.Response.RIBCL.IPv4StaticRoute, 
                       HPE.iLO.Response.RIBCL.IPv4StaticRoute, HPE.iLO.Response.RIBCL.IPv4StaticRoute}
DNSServer            : {1.1.1.1, 0.0.0.0, 0.0.0.0}
RegisterDDNSServer   : Enabled
DHCPv4DomainName     : Enabled
DHCPv4DNSServer      : Enabled
DHCPv4Enabled        : Yes
DHCPv4SNTPSetting    : Enabled
DHCPv4Gateway        : Enabled
DHCPStaticRoute      : Enabled
DHCPv4WINSServer     : Enabled
RegisterWINSServer   : Enabled
InterfaceType        : Dedicated
NICEnabled           : Yes
LinkSpeedMbps        : Automatic
FullDuplex           : Automatic
PermanentMACAddress  : 38:63:bb:2c:bd:b9
MACAddress           : 38:63:bb:2c:bd:b9
DNSName              : testdns
DomainName           : abcd.com
SpeedAutoselect      : Enabled
PingGatewayOnStartup : Enabled
iLONICAutoDelay      : 90
iLONICAutoSelect     : Disabled
iLONICAutoSNPScan    : 0
iLONICFailOver       : Disabled
iLONICFailOverDelay  : 300
WINSServer           : {0.0.0.0, 0.0.0.0}
VLANEnabled          : 
VLANID               :
SNPNICSetting        : 
SNPPort              : 
IP                   : 10.20.30.2
Hostname             : abcd.com
Status               : OK
StatusInfo           : 

PS C:\> $out.IPv4StaticRoute | fl

Destination : 0.0.0.0
Mask        : 0.0.0.0
Gateway     : 0.0.0.0

Destination : 0.0.0.0
Mask        : 0.0.0.0
Gateway     : 0.0.0.0

Destination : 0.0.0.0
Mask        : 0.0.0.0
Gateway     : 0.0.0.0
```

This example shows the usage of the cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.3 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOIPv4NetworkSetting -InterfaceType Shared

PS C:\> $out

IPv4Address          : 10.20.30.3
IPv4SubnetMask       : 255.255.252.0
IPv4Gateway          : 10.20.30.1
IPv4AddressOrigin    : Static
IPv4StaticRoute      : {HPE.iLO.Response.Redfish.IPv4StaticRoute, 
                       HPE.iLO.Response.Redfish.IPv4StaticRoute, 
                       HPE.iLO.Response.Redfish.IPv4StaticRoute}
DNSServer            : {0.0.0.0, 0.0.0.0, 0.0.0.0}
RegisterDDNSServer   : Enabled
DHCPv4DomainName     : Disabled
DHCPv4DNSServer      : Disabled
DHCPv4Enabled        : No
DHCPv4SNTPSetting    : Disabled
DHCPv4Gateway        : Disabled
DHCPStaticRoute      : Disabled
DHCPv4WINSServer     : Disabled
RegisterWINSServer   : Enabled
InterfaceType        : Shared
NICEnabled           : Yes
LinkSpeedMbps        : 1000
LinkStatus           : 
FullDuplex           : Enabled
FQDN                 : testdns.
PermanentMACAddress  : FC:15:B4:97:2D:89
MACAddress           : FC:15:B4:97:2D:89
DNSName              : testdns
DomainName           : abcd.com
SpeedAutoselect      : 
PingGatewayOnStartup : Enabled
WINSServer           : {0.0.0.0, 0.0.0.0}
VLANEnabled          : Yes
VLANID               : 1
SettingResult        : 
SNPNICSetting        : LOM
SupportsFlexibleLOM  : Yes
SupportsLOM          : Yes
SNPPort              : 1
UEFIDevicePath       :
IP                   : 10.20.30.3
Hostname             : xyz.example.com
Status               : OK
StatusInfo           : 

PS C:\> $out.IPv4StaticRoute | fl

Destination : 0.0.0.0
SubnetMask  : 0.0.0.0
Gateway     : 0.0.0.0

Destination : 0.0.0.0
SubnetMask  : 0.0.0.0
Gateway     : 0.0.0.0

Destination : 0.0.0.0
SubnetMask  : 0.0.0.0
Gateway     : 0.0.0.0
```

This example shows the usage of cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> Get-HPEiLOIPv4NetworkSetting -Connection $connection 

IPv4Address          : 10.20.30.2
IPv4SubnetMask       : 255.255.0.0
IPv4Gateway          : 0.0.0.0
IPv4StaticRoute      : {HPE.iLO.Response.RIBCL.IPv4StaticRoute, 
                       HPE.iLO.Response.RIBCL.IPv4StaticRoute, HPE.iLO.Response.RIBCL.IPv4StaticRoute}
DNSServer            : {1.1.1.1, 0.0.0.0, 0.0.0.0}
RegisterDDNSServer   : Enabled
DHCPv4DomainName     : Enabled
DHCPv4DNSServer      : Enabled
DHCPv4Enabled        : Yes
DHCPv4SNTPSetting    : Enabled
DHCPv4Gateway        : Enabled
DHCPStaticRoute      : Enabled
DHCPv4WINSServer     : Enabled
RegisterWINSServer   : Enabled
InterfaceType        : Dedicated
NICEnabled           : Yes
LinkSpeedMbps        : Automatic
FullDuplex           : Automatic
PermanentMACAddress  : 38:63:bb:2c:bd:b9
MACAddress           : 38:63:bb:2c:bd:b9
DNSName              : testdns
DomainName           : abcd.com
SpeedAutoselect      : Enabled
PingGatewayOnStartup : Enabled
iLONICAutoDelay      : 90
iLONICAutoSelect     : Disabled
iLONICAutoSNPScan    : 0
iLONICFailOver       : Disabled
iLONICFailOverDelay  : 300
WINSServer           : {0.0.0.0, 0.0.0.0}
VLANEnabled          : 
VLANID               : 
SNPNICSetting        : 
SNPPort              : 
IP                   : 10.20.30.2
Hostname             : abcd.com
Status               : OK
StatusInfo           : 

IPv4Address          : 10.20.30.3
IPv4SubnetMask       : 255.255.252.0
IPv4Gateway          : 10.20.30.1
IPv4AddressOrigin    : Static
IPv4StaticRoute      : {HPE.iLO.Response.Redfish.IPv4StaticRoute, 
                       HPE.iLO.Response.Redfish.IPv4StaticRoute, 
                       HPE.iLO.Response.Redfish.IPv4StaticRoute}
DNSServer            : {0.0.0.0, 0.0.0.0, 0.0.0.0}
RegisterDDNSServer   : Enabled
DHCPv4DomainName     : Disabled
DHCPv4DNSServer      : Disabled
DHCPv4Enabled        : No
DHCPv4SNTPSetting    : Disabled
DHCPv4Gateway        : Disabled
DHCPStaticRoute      : Disabled
DHCPv4WINSServer     : Disabled
RegisterWINSServer   : Enabled
InterfaceType        : Shared
NICEnabled           : Yes
LinkSpeedMbps        : 1000
LinkStatus           : 
FullDuplex           : Enabled
FQDN                 : testdns.
PermanentMACAddress  : FC:15:B4:97:2D:89
MACAddress           : FC:15:B4:97:2D:89
DNSName              : testdns
DomainName           : abcd.com
SpeedAutoselect      : 
PingGatewayOnStartup : Enabled
WINSServer           : {0.0.0.0, 0.0.0.0}
VLANEnabled          : Yes
VLANID               : 1
SettingResult        : 
SNPNICSetting        : LOM
SupportsFlexibleLOM  : Yes
SupportsLOM          : Yes
SNPPort              : 1
UEFIDevicePath       :
IP                   : 10.20.30.3
Hostname             : xyz.example.com
Status               : OK
StatusInfo           :
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

### -InterfaceType
InterfaceType specifies the type of network connection present in the manager.
The possible values are Dedicated and Shared.
This parameter is supported only on iLO 5 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Dedicated, Shared

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.IPv4NetworkSetting or HPE.iLO.Response.Redfish.IPv4NetworkSetting
## NOTES
In case of iLO 5 servers, when the InterfaceType parameter is not provided, the cmdlet retrieves the data of the port in which NIC is enabled.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOIPv4NetworkSetting]()

[Connect-HPEiLO]()

