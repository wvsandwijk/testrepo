---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOIPv4NetworkSetting

## SYNOPSIS
Modifies the IPv4 network setting of the host server corresponding to iLO.

## SYNTAX

```
Set-HPEiLOIPv4NetworkSetting [-Connection] <Connection[]> -InterfaceType <String[]>
 [-SharedNetworkPortType <String[]>] [-SNPPort <Int32[]>] [-VLANEnabled <String[]>] [-VLANID <Int32[]>]
 [-DNSName <String[]>] [-DomainName <String[]>] [-NICEnabled <String[]>] [-FullDuplex <String[]>]
 [-LinkSpeedMbps <String[]>] [-DHCPEnabled <String[]>] [-DHCPv4Gateway <String[]>]
 [-DHCPv4DomainName <String[]>] [-DHCPv4DNSServer <String[]>] [-DHCPv4WINSServer <String[]>]
 [-DHCPv4StaticRoute <String[]>] [-DHCPv4NTPServer <String[]>] [-IPv4Address <String[]>]
 [-IPv4SubnetMask <String[]>] [-IPv4Gateway <String[]>] [-IPv4StaticRouteIndex <Int32[][]>]
 [-IPv4StaticRouteDestination <String[][]>] [-IPv4StaticRouteMask <String[][]>]
 [-IPv4StaticRouteGateway <String[][]>] [-DNSServerType <String[][]>] [-DNSServer <String[][]>]
 [-RegisterDDNSServer <String[]>] [-PingGateway <String[]>] [-RegisterWINSServer <String[]>]
 [-WINSServerType <String[][]>] [-WINSServer <String[][]>] [-iLONICAutoDelay <Int32[]>]
 [-iLONICFailOver <String[]>] [-iLONICFailOverDelay <Int32[]>] [-iLONICAutoSelect <String[]>]
 [-iLONICAutoSNPScan <Int32[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOIPv4NetworkSetting cmdlet modifies the iLO IPv4 network settings.
The iLO scripting firmware does not attempt to decipher if the network modifications are appropriate for the network environment.
When modifying network settings, be aware of the network commands provided to the management processor.
In some cases, the management processor ignores commands and no error is returned.

For example, when a script includes the command to enable DHCP and a command to modify the IP address, the IP address is ignored.
Changing the network settings to values that are not correct for the network environment could cause a loss of connectivity to iLO.

If connectivity to iLO is lost, use the RBSU to reconfigure the network settings to values that are compatible with the network environment.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOIPv4NetworkSetting -InterfaceType Dedicated -DHCPEnabled No -IPv4Address 1.1.1.1 -IPv4Gateway 2.2.2.2 -IPv4SubnetMask 3.3.3.3 -DNSName testDNS -DomainName abcd.com -NICEnabled Yes -FullDuplex Enabled -LinkSpeedMbps 100
```

This cmdlet sets the value of the IPV4 network settings for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $gateway = ,@("1.1.1.1","")
$dest = ,@("2.2.2.2","")
$mask = ,@("3.3.3.3","")
$index = ,@(2,1)
$dnstype = ,@("Primary","Tertiary")
$dnsserver = ,@("4.4.4.4","")
$dnstype = ,@("Primary","Tertiary")
$dnsserver = ,@("5.5.5.5","")

PS C:\> ,$connection | Set-HPEiLOIPv4NetworkSetting -InterfaceType Dedicated -IPv4StaticRouteIndex $index -IPv4StaticRouteDestination $dest -IPv4SubnetMask $mask -IPv4Gateway $gateway -DNSServerType $dnstype -DNSServer $dnsserver -WINSServerType $winstype -WINSServer $winsserver
```

This cmdlet sets the value of the IPV4 network settings for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOIPv4NetworkSetting -InterfaceType Shared -SharedNetworkPortType LOM -SNPPort 1 -VLANEnabled Enabled -VLANID 2
```

This cmdlet sets the value of the IPV4 network settings for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Set-HPEiLOIPv4NetworkSetting -Connection $connection -InterfaceType Dedicated -DHCPEnabled Yes -DHCPv4Gateway Enabled -DHCPv4DomainName Enabled -DHCPv4DNSServer Disabled -DHCPv4WINSServer Enabled -DHCPv4StaticRoute Enabled -DHCPv4NTPServer Disabled
```

This cmdlet sets the value of the IPV4 network settings for iLO 4 and iLO 5, in which the connection object is passed as named parameter.

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
The following parameters are not supported for InterfaceType - Dedicated:
• SharedNetworkPortType
• SNPPort
• VLANEnabled
• VLANID
The following parameters are not supported for InterfaceType - Shared:
• FullDuplex
• LinkSpeedMbps
NOTE: InterfaceType Shared is not supported on BL servers.

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

### -DHCPEnabled
Enables or disables the DHCP.
The possible values are Yes for enabling DHCP and No for disabling DHCP.

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

### -DHCPv4Gateway
Specifies if the DHCP-assigned gateway address is to be used.
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

### -DHCPv4DomainName
Specifies if the DHCP-assigned Domain Name is to be used.
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

### -DHCPv4DNSServer
Specifies if the DHCP-assigned DNS Server is to be used.
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

### -DHCPv4WINSServer
Specifies if the DHCP-assigned WINS server is to be used.
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

### -DHCPv4StaticRoute
Specifies if the DHCP-assigned Static Route is to be used.
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

### -DHCPv4NTPServer
Specifies if the DHCP-assigned NTP Server is to be used.
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

### -IPv4Address
Selects the IP address for iLO if DHCP is not enabled.
If an empty string or 0.0.0.0 is entered, the current value is deleted.

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

### -IPv4SubnetMask
Selects the subnet mask for iLO if DHCP is not enabled.
If an empty string or 0.0.0.0 is entered, the current value is deleted.

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

### -IPv4Gateway
Selects the default gateway IP address for iLO if DHCP is not enabled.
If an empty string or 0.0.0.0 is entered, the current value is deleted.

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

### -IPv4StaticRouteIndex
The index of the IPv4 static route that needs to be set.
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

### -IPv4StaticRouteDestination
The IPv4 static route destination address.
This parameter accpets an array of IPv4 addresses.

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

### -IPv4StaticRouteMask
The IPv4 static route mask address.
This parameter accpets an array of IPv4 addresses.

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

### -IPv4StaticRouteGateway
The IPv4 static route gateway address.
This parameter accpets an array of IPv4 addresses.

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
DNSServerType specifies the DNS server for which the IPv4 address needs to be set.
The possible values are Primary,Secondary, and Tertiary.
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
Currently configured IPv4 DNS servers in order mentioned in DNSServerType.
Static values when not configured to use DHCPv4-supplied DNS servers; otherwise this property is read-only indicating the values are provided by DHCPv4.

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

### -RegisterDDNSServer
Determines DDNS Server registration.
The supported values are Enabled or Disabled.

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

### -PingGateway
Determines whether to ping the IPv4 gateway on startup.
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

### -RegisterWINSServer
Determines WINS Server registration.
The supported values are Enabled or Disabled.

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

### -WINSServerType
WINSServerType specifies the WINS server for which the IPv4 address needs to be set.
The possible values are Primary and Secondary.
WINSServerType must be provided along with WINSServerValue with valid values.

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

### -WINSServer
Currently configured IPv4 WINS servers in order mentioned in WINSServerType.
Static values when not configured to use DHCPv4-supplied WINS servers; otherwise this property is read-only indicating the values are provided by DHCPv4.

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

### -iLONICAutoDelay
Specifies the number of seconds to test each NIC connection before moving to the next while scanning.
Valid values are 90 to 1800.
If not specified, the delay will default to 90 seconds.
This parameter is supported only on iLO 4 servers.

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

### -iLONICFailOver
Configures NIC Fail-over feature.
To enable this feature, iLONicAutoSelect tag must also be present and must be a value other than DISABLED.
Valid values are:
• DISABLED
• LINKACT
• RCVDATA
• DHCP
This parameter is supported only on iLO 4 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, LINKACT, RCVDATA, DHCP

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -iLONICFailOverDelay
Specifies the number of seconds to monitor each NIC connection before considering the connection as failed and switching to the next NIC.
Valid values are 30 to 3600.
If not specified, the delay will default to 300 seconds.
This parameter is supported only on iLO 4 servers.

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

### -iLONICAutoSelect
Allows iLO to automatically select between either the shared or dedicated network ports at startup.
The feature looks for network activity on the ports, and the first port found with network activity is selected for use.
Any changes to this setting do not take effect until the iLO is reset.
Possible values are:
• DISABLED
• LINKACT
• RCVDATA
• DHCP
This parameter is supported only on iLO 4 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, LINKACT, RCVDATA, DHCP

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -iLONICAutoSNPScan
Scans multiple SNP ports during NIC auto-selection when supported by hardware.
Valid values are 0 and 2.
When the value is set to 0, iLO scans currently configured SNP port.
When the value is set to 2, iLO scans the SNP ports 1 and 2.
This parameter is supported only in iLO 4 servers.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 0, 2

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
System.Int32[][]
System.String[][]
## OUTPUTS

### System.Object
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
• In case of iLO 4 servers, when the script has successfully completed, the iLO management processor reboots to apply the changes.
It is recommended to wait until the reset is successful before executing any cmdlet further.
• In case of iLO 5 servers, you must reset the iLO to successfully apply the setting.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOIPv4NetworkSetting]()

[Connect-HPEiLO]()

