---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOIPv6NetworkSetting

## SYNOPSIS
Modifies the IPv6 network setting of the host server corresponding to iLO.

## SYNTAX

```
Set-HPEiLOIPv6NetworkSetting [-Connection] <Connection[]> -InterfaceType <String[]>
 [-SharedNetworkPortType <String[]>] [-SNPPort <Int32[]>] [-VLANEnabled <String[]>] [-VLANID <Int32[]>]
 [-DNSName <String[]>] [-DomainName <String[]>] [-NICEnabled <String[]>] [-FullDuplex <String[]>]
 [-LinkSpeedMbps <String[]>] [-DHCPv6DNSServer <String[]>] [-DHCPv6SNTPSetting <String[]>]
 [-DHCPv6RapidCommit <String[]>] [-DHCPv6StatefulMode <String[]>] [-DHCPv6StatelessMode <String[]>]
 [-DHCPv6DomainName <String[]>] [-IPv6DefaultGateway <String[]>] [-PreferredProtocol <String[]>]
 [-RegisterDDNSServer <String[]>] [-StatelessAddressAutoConfiguration <String[]>]
 [-IPv6StaticAddress <String[][]>] [-IPv6StaticAddressPrefixLength <Int32[][]>]
 [-IPv6StaticRouteIndex <Int32[][]>] [-IPv6StaticRouteDestination <String[][]>]
 [-IPv6StaticRoutePrefixLength <Int32[][]>] [-IPv6StaticRouteGateway <String[][]>]
 [-DNSServerType <String[][]>] [-DNSServer <String[][]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOIPv6NetworkSetting cmdlet modifies IPv6 network settings.
You must have the Configure iLO Settings privilege to execute This cmdlet.
The iLO scripting firmware does not attempt to decipher if the network modifications are appropriate for the network environment.
When modifying network settings, be aware of the network commands provided to the management processor.
In some cases, the management processor ignores commands and no error is returned.
For example, when a script includes the command to enable DHCP and a command to modify the IPv6 address, the IPv6 address is ignored.
Changing the network settings to values that are not correct for the network environment could cause a loss of connectivity to iLO.
When the script has successfully completed, the iLO management processor reboots to apply the changes.
If connectivity to iLO is lost, use the RBSU to reconfigure the network settings to values that are compatible with the network environment.
Only Server, Username, and Password will be prompted for if not provided.
If parameter values are not provided, they remain unchanged.
A list of servers (with or without port number) and corresponding username/password or credential values must be provided as parameters.

NOTE: For the Static IPv6 Address settings, all the addresses from 1 to 4 should be provided with correct values, otherwise, the unspecified addresses will be deleted by default.
For example, if only address 3 is provided with valid values and other addresses are not specified, the current settings of address1, address2, and address4 will be deleted.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $gateway = ,@("aa80::3ea8:2aff:fe19:e15d","")
$dest = ,@("ab80::3ea8:2aff:fe19:e15d","")
$staticpl = ,@(64,0)
$index = ,@(2,1)
$dnsserver = ,@("ac80::3ea8:2aff:fe19:e15d","")
$dnstype = ,@("primary","tertiary")
$ipaddressindex = ,@(2,1,4)
$ipaddress = ,@("ad80::3ea8:2aff:fe19:e15d","","")
$ipaddressprefixlength = ,@(64,0,44)
  
PS C:\> $conn | Set-HPEiLOIPv6NetworkSetting -InterfaceType Dedicated -IPv6StaticAddress $ipaddress -IPv6StaticAddressPrefixLength $ipaddressprefixlength -DNSServerType $dnstype -DNSServer $dnsserver -IPv6StaticRouteIndex $index -IPv6StaticRouteGateway $gateway -IPv6StaticRoutePrefixLength $staticpl -IPv6StaticRouteDestination $dest -DHCPv6DNSServer Disabled
```

This cmdlet sets the value of the IPV6 network settings for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Set-HPEiLOIPv6NetworkSetting -Connection $connection -InterfaceType Dedicated -DHCPv6DomainName Enabled -DHCPv6DNSServer Enabled -DHCPv6Stateful Enabled -DHCPv6RapidCommit Enabled -DHCPv6SNTPSetting Disabled -DHCPv6Stateless Enabled
```

This cmdlet sets the value of the IPV6 network settings for iLO 4 and iLO 5, in which the connection object is passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Set-HPEiLOIPv6NetworkSetting -Connection $connection -InterfaceType Dedicated -DNSName "sampleDNS" -DomainName "DomainName" -NICEnabled Enabled -FullDuplex Enabled -LinkSpeedMbps 10 -DefaultGateway "ad80::3ea8:2aff:fe19:e15d" -RegisterDDNSServer Enabled -AddressAutoConfiguration Enabled
```

This cmdlet sets the value of the IPV6 network settings for iLO 4 and iLO 5, in which the connection object is passed as named parameter.

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

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Dedicated, Shared

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SharedNetworkPortType
Sets the Shared Network Port value.
The values are LOM or FlexibleLOM.
For iLO, the Shared Network Port feature is only available on servers with hardware, NIC firmware, and iLO firmware that supports this feature.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: LOM, FlexibleLOM

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SNPPort
The network adapter port number that is used for sharing.
This feature is only applicable on systems and network adapters that support it.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 1, 2

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VLANEnabled
Enables or disables Virtual LAN.
Possible values are Yes and No.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VLANID
Indicates the VLAN identifier for the corresponding VLAN.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DNSName
Specifies the DNS name for iLO.
If an empty string is entered, the current value is deleted.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DomainName
Specifies the domain name for the network where iLO resides.
If an empty string is entered, the current value is deleted.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NICEnabled
Enables the NIC to reflect the state of iLO.
The values are Yes to enable NIC or No to disable NIC.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FullDuplex
Decides if iLO is to support full-duplex or half-duplex mode.
It is only applicable if LinkSpeedMbps was not set to Automatic.
The possible values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LinkSpeedMbps
The link speed of the Ethernet interface in megabits per second.
This property can only be modified on a dedicated network port.
It cannot be modified for blade servers.
The accepted values are 10,100,1000,2500,5000 and Automatic.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Automatic, 10, 100, 1000, 2500, 5000

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6DNSServer
Specifies if the DHCP-assigned DNS server is to be used.
The possible values are Enabled and Disabled.
This selection is only valid if DHCP is enabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6SNTPSetting
Determines whether iLO is to get the SNTP time servers and time zone from the DHCP server or whether the user enters that information manually.
Possible values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6RapidCommit
DHCPv6RapidCommit is used when DHCPv6Stateful is enabled.
It providesa reduction in the amount of DHCPv6 network traffic needed to assign addresses, but should not be used if more than one DHCPv6 server is present in the network for the purpose of assigning addresses.
DHCPv6 database errors may result if more than one server can assign iLO an IPv6 address and Rapid Commit mode is enabled.
Possible values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6StatefulMode
Determines whether DHCPv6 Stateful mode is enabled or disabled.
The supported values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6StatelessMode
Determines whether DHCPv6 Stateless mode is enabled or disabled.
The supported values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6DomainName
Determines whether to use a DHCPv6-supplied domain name.
Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to Disabled and will be read-only.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6DefaultGateway
The IPv6 static default gateway entry.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PreferredProtocol
The possible values are Enabled and Disabled.
If Enabled is selected, IPv6 addresses will be used when both IPv6 and IPv4 are available.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RegisterDDNSServer
Instructs iLO to register the management port with a DDNS server.
The possible values are Enabled to register the management port or Disabled to not register the management port with DNS server.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: RegDDNSServer
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StatelessAddressAutoConfiguration
Determines whether StateLess Address Auto-Configuration is enabled or disabled.The supported values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: AddressAutoCfg
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticAddress
Specifies the list of IPv6 with details in PowerShell object format or in a string\[\] format.
Possible values are valid IPv6 address and empty string " " .
If " " is entered, the current value is deleted.
IPv6Address must be provided with IPv6StaticAddressPrefixLength at the same time with valid values.
At the maximum, 4 IPv6StaticAddress can be provided.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticAddressPrefixLength
Specifies the list of Prefix Length to IPv6StaticAddress.
Possible values are from 0 to 128 in Integer array format.
A 0 means to clear the current prefix length value.
If IPv6StaticAddress is a valid IPv6 address, IPv6StaticAddressPrefixLength cannot be set to 0, because they are not a correct IPv6 combination.
At the maximum, 4 IPv6StaticAddressPrefixLength can be provided.

```yaml
Type: Int32[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticRouteIndex
The index of the IPv6 static route that needs to be set.
This parameter accepts an array of integers.

```yaml
Type: Int32[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticRouteDestination
The IPv6 static route destination address.
This parameter accpets an array of IPv6 addresses.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticRoutePrefixLength
The prefix length of the IPv6 static route destination address.
This parameter accepts an array of integers.

```yaml
Type: Int32[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPv6StaticRouteGateway
The IPv6 static route gateway.
This parameter accpets an array of IPv6 addresses.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DNSServerType
DNSServerType specifies the DNS server for which the IPv6 address needs to be set.
The possible values are Primary,Secondary and Tertiary.
DNSServerType must be provided along with DNSServerValue with valid values.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DNSServer
Currently configured IPv6 DNS servers in order of descending preference.
Static values when not configured to use DHCPv6-supplied DNS servers; otherwise this property is read-only indicating the values are provided by DHCPv6.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error for any missing required parameters.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.Int32[]
## OUTPUTS

### System.Object
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
• In case of iLO 4 servers, when InterfaceType is given as Shared, the following parameters are not supported:
DHCPv6DNSServer,DHCPv6SNTPSetting,DHCPv6RapidCommit,DHCPv6StatefulMode,DHCPv6StatelessMode,DHCPv6DomainName,IPv6DefaultGateway,PreferredProtocol,RegisterDDNSServer,StatelessAddressAutoConfiguration,IPv6StaticAddress,IPv6StaticAddressPrefixLength,IPv6StaticRouteIndex,IPv6StaticRouteDestination,IPv6StaticRoutePrefixLength,IPv6StaticRouteGateway,DNSServerType, and DNSServer.

• In case of iLO 4 servers, iLO is reset post successful execution of the cmdlet.
It is recommended to wait until the reset is successful before executing any cmdlet further.

• In case of iLO 5 servers, you must reset the iLO to successfully apply the setting.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOIPv6NetworkSetting]()

