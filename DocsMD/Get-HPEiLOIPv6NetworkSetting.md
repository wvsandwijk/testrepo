---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOIPv6NetworkSetting

## SYNOPSIS
Gets the current iLO IPv6 network settings.

## SYNTAX

```
Get-HPEiLOIPv6NetworkSetting [-Connection] <Connection[]> [-InterfaceType <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOIPv6NetworkSetting cmdlet gets the current iLO IPv6 network settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\>$out = ,$connection | Get-HPEiLOIPv6NetworkSetting

IPv6Address                       : {HPE.iLO.Response.RIBCL.Address, HPE.iLO.Response.RIBCL.Address}
IPv6StaticAddress                 : {HPE.iLO.Response.RIBCL.Address}
IPv6StaticRoute                   : {HPE.iLO.Response.RIBCL.StaticRoute, HPE.iLO.Response.RIBCL.StaticRoute, 
                                    HPE.iLO.Response.RIBCL.StaticRoute}
DNSServer                         : {::, ::, ::}
IPv6DefaultGateway                : ::
PreferredProtocol                 : Disabled
StatelessAddressAutoConfiguration : Disabled
RegisterDDNSServer                : Enabled
DHCPv6DomainName                  : Disabled
DHCPv6DNSServer                   : Disabled
DHCPv6RapidCommit                 : Disabled
DHCPv6SNTPSetting                 : Disabled
DHCPv6StatefulMode                : Disabled
DHCPv6StatelessMode               : Enabled
InterfaceType                     : Dedicated
NICEnabled                        : Yes
LinkSpeedMbps                     : Automatic
FullDuplex                        : Automatic
PermanentMACAddress               : 38:63:bb:2c:bd:b9
MACAddress                        : 38:63:bb:2c:bd:b9
DNSName                           : 
DomainName                        : abcd
SpeedAutoselect                   : Enabled
MaxIPv6StaticAddress              : 4
VLANEnabled                       : 
VLANID                            : 
SNPNICSetting                     : 
SNPPort                           : 
IP                                : 10.20.30.2
Hostname                          : xyz.example.com
Status                            : OK
StatusInfo                        : 

PS C:\> $out.IPv6Address | fl

Value         : fe80::aaaa:2aff:fe19:e15c
Prefixlength  : 64
AddressSource : SLAAC
AddressStatus : ACTIVE

PS C:\> $out.IPv6StaticRoute | fl

Destination   : ::
PrefixLength  : 0
Gateway       : ::
AddressStatus : INACTIVE

Destination   : ::
PrefixLength  : 0
Gateway       : ::
AddressStatus : INACTIVE

Destination   : ::
PrefixLength  : 0
Gateway       : ::
AddressStatus : INACTIVE
```

This example shows the usage of the cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.3 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOIPv6NetworkSetting -InterfaceType Dedicated

IPv6Address                       : {HPE.iLO.Response.Redfish.Address}
IPv6StaticRoute                   : {HPE.iLO.Response.Redfish.StaticRoute, HPE.iLO.Response.Redfish.StaticRoute, 
                                    HPE.iLO.Response.Redfish.StaticRoute}
IPv6StaticAddress                 : {HPE.iLO.Response.Redfish.StaticAddress, HPE.iLO.Response.Redfish.StaticAddress, 
                                    HPE.iLO.Response.Redfish.StaticAddress, HPE.iLO.Response.Redfish.StaticAddress}
DNSServer                         : {::, ::, ::}
IPv6DefaultGateway                : ::
FullDuplex                        : Enabled
MACAddress                        : FC:15:B4:97:2D:88
MaxIPv6StaticAddress              : 4
DNSName                           : ILO123
DomainName                        : 
InterfaceType                     : Dedicated
NICEnabled                        : Yes
NICSupportsIPv6                   : Yes
PermanentMACAddress               : FC:15:B4:97:2D:88
LinkSpeedMbps                     : 1000
LinkStatus           : 
SpeedAutoSelect                   : Enabled
StatelessAddressAutoConfiguration : Enabled
RegisterDDNSServer                : Enabled
DHCPv6StatelessMode               : Enabled
DHCPv6StatefulMode                : Enabled
DHCPv6RapidCommit                 : Disabled
DHCPv6DomainName                  : Enabled
DHCPv6SNTPSetting                 : Enabled
DHCPv6DNSServer                   : Enabled
IPv6AddressPolicyTable            : {HPE.iLO.Response.Redfish.AddressPolicyTable}
VLANEnabled                       : 
VLANID                            : 
SettingResult                     : 
SNPNICSetting                     : 
SupportsFlexibleLOM               : 
SupportsLOM                       : 
SNPPort                           : 
UEFIDevicePath                    : 
IP                       : 10.20.30.3
Hostname                 : xyz.example.com
Status                   : OK
StatusInfo               : 

PS C:\> $out.IPv6Address | fl

Value         : FE80::FE15:B4FF:FE97:2D88
AddressOrigin : SLAAC
AddressState  : Preferred
PrefixLength  : 64

Value         : CE80::3EA8:2AFF:FE19:E15D
AddressOrigin : Static
AddressState  : Preferred
PrefixLength  : 64

Value         : CC80::3EA8:2AFF:FE19:E15D
AddressOrigin : Static
AddressState  : Preferred
PrefixLength  : 64

Value         : BE80::9657:A5FF:FE6A:D7EA
AddressOrigin : Static
AddressState  : Preferred
PrefixLength  : 64

Value         : DE80::3EA8:2AFF:FE19:E15D
AddressOrigin : Static
AddressState  : Preferred
PrefixLength  : 44

PS C:\> $out.IPv6StaticAddress | fl

Address      : CE80::3EA8:2AFF:FE19:E15D
PrefixLength : 64

Address      : CC80::3EA8:2AFF:FE19:E15D
PrefixLength : 64

Address      : BE80::9657:A5FF:FE6A:D7EA
PrefixLength : 64

PS C:\> $out.IPv6StaticRoute | fl

Destination  : ::
Gateway      : ::
PrefixLength : 
Status       : Unknown

Destination  : AE80::3EA8:2AFF:FE19:E15D
Gateway      : AB80::3EA8:2AFF:FE19:E15D
PrefixLength : 64
Status       : Active

Destination  : BB80::3EA8:2AFF:FE19:E15D
Gateway      : BA80::3EA8:2AFF:FE19:E15D
PrefixLength : 64
Status       : Failed

PS C:\> $out.IPv6AddressPolicyTable | fl

Label      : 
Precedence : 35
Prefix     : ::ffff:0:0/96

Address      : DE80::3EA8:2AFF:FE19:E15D
PrefixLength : 44
```

This example shows the usage of the cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> Get-HPEiLOIPv6NetworkSetting -Connection $connection 

IPv6Address                       : {HPE.iLO.Response.RIBCL.Address, HPE.iLO.Response.RIBCL.Address}
IPv6StaticAddress                 : {HPE.iLO.Response.RIBCL.Address}
IPv6StaticRoute                   : {HPE.iLO.Response.RIBCL.StaticRoute, HPE.iLO.Response.RIBCL.StaticRoute, 
                                    HPE.iLO.Response.RIBCL.StaticRoute}
DNSServer                         : {::, ::, ::}
IPv6DefaultGateway                : ::
PreferredProtocol                 : Disabled
StatelessAddressAutoConfiguration : Disabled
RegisterDDNSServer                : Enabled
DHCPv6DomainName                  : Disabled
DHCPv6DNSServer                   : Disabled
DHCPv6RapidCommit                 : Disabled
DHCPv6SNTPSetting                 : Disabled
DHCPv6StatefulMode                : Disabled
DHCPv6StatelessMode               : Enabled
InterfaceType                     : Dedicated
NICEnabled                        : Yes
LinkSpeedMbps                     : Automatic
LinkStatus                        : 
FullDuplex                        : Automatic
PermanentMACAddress               : 38:63:bb:2c:bd:b9
MACAddress                        : 38:63:bb:2c:bd:b9
DNSName                           : 
DomainName                        : abcd
SpeedAutoselect                   : Enabled
MaxIPv6StaticAddress              : 4
VLANEnabled                       : 
VLANID                            : 
SettingResult                     : 
SNPNICSetting                     : 
SNPPort                           : 
UEFIDevicePath                    : 
IP                                : 10.20.30.1
Hostname                          : xyz.example.com
Status                            : OK
StatusInfo                        : 

IPv6Address                       : {HPE.iLO.Response.Redfish.Address}
IPv6StaticRoute                   : {HPE.iLO.Response.Redfish.StaticRoute, HPE.iLO.Response.Redfish.StaticRoute, 
                                    HPE.iLO.Response.Redfish.StaticRoute}
IPv6StaticAddress                 : {HPE.iLO.Response.Redfish.StaticAddress, HPE.iLO.Response.Redfish.StaticAddress, 
                                    HPE.iLO.Response.Redfish.StaticAddress, HPE.iLO.Response.Redfish.StaticAddress}
DNSServer                         : {::, ::, ::}
IPv6DefaultGateway                : ::
FullDuplex                        : Enabled
MACAddress                        : FC:15:B4:97:2D:88
MaxIPv6StaticAddress              : 4
DNSName                           : ILO123
DomainName                        : 
InterfaceType                     : Dedicated
NICEnabled                        : Yes
NICSupportsIPv6                   : Yes
PermanentMACAddress               : FC:15:B4:97:2D:88
LinkSpeedMbps                     : 1000
LinkStatus           : 
SpeedAutoSelect                   : Enabled
StatelessAddressAutoConfiguration : Enabled
RegisterDDNSServer                : Enabled
DHCPv6StatelessMode               : Enabled
DHCPv6StatefulMode                : Enabled
DHCPv6RapidCommit                 : Disabled
DHCPv6DomainName                  : Enabled
DHCPv6SNTPSetting                 : Enabled
DHCPv6DNSServer                   : Enabled
IPv6AddressPolicyTable            : {HPE.iLO.Response.Redfish.AddressPolicyTable}
VLANEnabled                       : 
VLANID                            : 
SettingResult                     : 
SNPNICSetting                     : 
SupportsFlexibleLOM               : 
SupportsLOM                       : 
SNPPort                           : 
UEFIDevicePath                    : 
IP                       : 10.20.30.2
Hostname                 : abcd.com
Status                   : OK
StatusInfo               :
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

### HPE.iLO.Response.Connection[]System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.IPv6NetworkSetting[] or HPE.iLO.Response.Redfish.IPv6NetworkSetting[]
## NOTES
In case of iLO 5 servers, when the InterfaceType parameter is not provided, the cmdlet retrieves the data of the port in which NIC is enabled.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOIPv6NetworkSetting]()

[Connect-HPEiLO]()

