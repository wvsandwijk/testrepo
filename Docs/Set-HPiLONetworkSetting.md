---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLONetworkSetting

## SYNOPSIS
Modifies the IPv4 network settings of the iLO.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLONetworkSetting [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-EnableNIC <Object>] [-RegDDNSServer <Object>] [-PingGateway <Object>]
 [-DHCPDomain <Object>] [-SpeedAutoselect <Object>] [-NICSpeed <Object>] [-FullDuplex <Object>]
 [-DHCPEnable <Object>] [-IPAddress <Object>] [-SubnetMask <Object>] [-GatewayIP <Object>] [-DNSName <Object>]
 [-Domain <Object>] [-DHCPGateway <Object>] [-DHCPDNSServer <Object>] [-DHCPWINSServer <Object>]
 [-DHCPStaticRoute <Object>] [-RegWINSServer <Object>] [-PrimDNSServer <Object>] [-SecDNSServer <Object>]
 [-TerDNSServer <Object>] [-PrimWINSServer <Object>] [-SecWINSServer <Object>] [-StaticRoute1Dest <Object>]
 [-StaticRoute1Gateway <Object>] [-StaticRoute2Dest <Object>] [-StaticRoute2Gateway <Object>]
 [-StaticRoute3Dest <Object>] [-StaticRoute3Gateway <Object>] [-DHCPSNTP <Object>] [-SNTPServer1 <Object>]
 [-SNTPServer2 <Object>] [-Timezone <Object>] [-EnclosureIPEnable <Object>] [-iLONicAutoSelect <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLONetworkSetting cmdlet modifies the iLO IPv4 network settings.
You must have Configure iLO Settings privilege to execute this command.
The iLO scripting firmware does not attempt to decipher if the network modifications are appropriate for the network environment.
When modifying network settings, be aware of the network commands provided to the management processor.
In some cases, the management processor ignores commands and no error is returned.
For example, when a script includes the command to enable DHCP and a command to modify the IP address, the IP address is ignored.
Changing the network settings to values that are not correct for the network environment could cause a loss of connectivity to iLO.
When the script has successfully completed, the iLO management processor reboots to apply the changes.
If connectivity to iLO is lost, use the RBSU to reconfigure the network settings to values that are compatible with the network environment.
Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLONetworkSetting -EnableNIC Yes -RegDDNSServer $RegDDNSServer -PingGateway $PingGateway -DHCPDomain $DHCPDomain
Please enter Server IP or Hostname: 1.4.217.131,187
Do you want to add details for another server?(Y/N) : y
Please enter Server IP or Hostname: 1.4.209.53
Do you want to add details for another server?(Y/N) : n

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Username for these servers? (Y/N) : N
Enter Username for 1.4.217.131: administrator
Enter Username for 1.4.217.187: alansmith
Enter Username for 1.4.209.53: timhorton

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Password for these servers? (Y/N) : N
Enter Password for 1.4.217.131: ************
Enter Password for 1.4.217.187: ************
Enter Password for 1.4.209.53: ************
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Set-HPiLONetworkSetting -Server $server -EnableNIC $EnableNIC -RegDDNSServer $RegDDNSServer -PingGateway $PingGateway -DHCPDomain $DHCPDomain

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Username for these servers? (Y/N) : Y
Please enter Username : alansmith

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Password for these servers? (Y/N) : Y
Please enter Password : ************
```

This command takes parameters for EnableNIC, RegDDNSServer, PingGateway, DHCPDomain.
$Server is passed as parameter to Set-HPiLONetworkSetting.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Set-HPiLONetworkSetting -Server $Server -Username $Username -Password $Password -EnableNIC $EnableNIC -RegDDNSServer $RegDDNSServer -PingGateway $PingGateway -DHCPDomain $DHCPDomain -SpeedAutoselect $SpeedAutoselect -NICSpeed $NICSpeed -FullDuplex $FullDuplex -DHCPEnable $DHCPEnable -IPAddress $IPAddress
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords, and required parameters.

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format or in a string format.
The PowerShell object may contain fields such as IP Address, Hostname, spn, fwri, pn, MAC address.
The object may also contain the userid and password required to access the iLO.
A range of iLO IPs can also be provided in the same string.
IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.
Following are examples of server parameters:

Example 1. 
$serverSet1 = "81.2.84.150"

Example 2.
$serverSet2 = New-Object PSObject | 
            Add-Member NoteProperty IP  81.2.84.150 -PassThru | 
            Add-Member NoteProperty SPN "ProLiant DL360p Gen8" -PassThru | 
            Add-Member NoteProperty FWRI 1.10 -PassThru | 
            Add-Member NoteProperty PN "Integrated Lights-Out 4 (iLO 4)" -PassThru |
            Add-Member NoteProperty HOSTNAME ilomxq12345cs.company.net -PassThru |
            Add-Member NoteProperty MACADDRESS 00:A0:C9:14:C8:29 -PassThru

Example 3.
$serverObj1 = New-Object PSObject | 
            Add-Member NoteProperty IP  81.2.84.150 -PassThru | 
            Add-Member NoteProperty SPN "ProLiant DL360p Gen8" -PassThru | 
            Add-Member NoteProperty FWRI 1.10 -PassThru | 
            Add-Member NoteProperty PN "Integrated Lights-Out 4 (iLO 4)" -PassThru |
            Add-Member NoteProperty HOSTNAME ilomxq12345cs.company.net -PassThru |
            Add-Member NoteProperty MACADDRESS 00:A0:C9:14:C8:29 -PassThru

$serverSet1 = @("81.2.84.150", $serverObj1,"81.2.88.158,161", "81.2.88.170-175", "2607:f0d0:1002:51::4")

Example 4.
$serverSet4 = "81.2.84.150:8888"

Example 5. 
$serverSet5 = "\[2607:f0d0:1002:51::4\]:8888"

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Credential
Credential object based on user name and password to log onto the iLO.
Credential should not be used along with Username/Password.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Username
Specifies the single username for all the iLOs or a list of usernames for each iLO in the input iLO list.
It can be a single string or it can be a collection of usernames in the form of a string array.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Specifies the single password for all the iLOs or a list of passwords for each iLO in the input iLO list.
It can be a single string or it can be a collection of passwords in the form of a string array.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EnableNIC
Enables the NIC to reflect the state of iLO.
The values are Yes, Y, Enable and On to enable NIC or No, N, Disable and Off to disable NIC.
It is case insensitive.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RegDDNSServer
Instructs iLO to register the management port with a DDNS server.
The possible values are Yes, Y, Enable and On to register the management port or No, N, Disable and Off disables the registration of management port with DNS server.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PingGateway
Specifies if the Ping-assigned gateway address is to be used.
Possible values are Yes, Y, Enable and On to use ping-assigned gateway and No, N, Disable and Off to not use ping-assigned gateway.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPDomain
Specifies if the DHCP domain is to be used.
Possible values are Yes, Y, Enable or On to use DHCP domain and No, N, Disable or Off to not use DHCP domain.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SpeedAutoselect
Enables or disables the iLO transceiver to auto-detect the speed (NICSpeed) and duplex (FullDuplex) of the network.
This parameter is optional, and the Boolean string must be set to Yes, Y, Enable or On to enable the speed auto-detect.
If this parameter is used, the Boolean string value must not be left blank.
The possible values are Yes, Y, Enable and On to enable the functionality or No, N, Disable and Off to disable the functionality.
The parameter value is case insensitive.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NICSpeed
Set the transceiver speed if SpeedAutoselect is set to No, N, Disable or Off.
The possible values are 10, 100, or Automatic/Auto.
If SpeedAutoselect is set to No, N, Disable or Off and NICSpeed is set to Automatic/Auto, the current value is retained.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FullDuplex
Decides if iLO is to support full-duplex or half-duplex mode.
It is only applicable if SpeedAutoselect was set to No, N, Disable or Off.
The possible values are Yes/Y/Enable/On, No/N/Disable/Off, or Automatic/Auto.
If SpeedAutoselect is set to N/No/Disable/Off, and FullDuplex is set to Automatic/Auto, the current value is retained.
The parameter value is case insensitive.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: Duplex

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPEnable
Enables or disables the DHCP.
The possible values are Yes, Y, Enable and On for enabling DHCP or No, N, Disable and Off for disabling DHCP.
The parameter value is case insensitive.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IPAddress
Selects the IP address for iLO if DHCP is not enabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubnetMask
Selects the subnet mask for iLO if DHCP is not enabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GatewayIP
Selects the default gateway IP address for iLO if DHCP is not enabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
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
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Domain
Specify the domain name for the network where iLO resides.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPGateway
Specifies if the DHCP-assigned gateway address is to be used.
The possible values are Yes or No.
This selection is only valid if DHCP is enabled.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPDNSServer
Specifies if the DHCP-assigned DNS server is to be used.
The possible values are Yes or No.
This selection is only valid if DHCP is enabled.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPWINSServer
Specifies if the DHCP-assigned WINS server is to be used.
The possible values are Yes or No.
This selection is only valid if DHCP is enabled.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPStaticRoute
Specifies if the DHCP-assigned static routes are to be used.
The possible values are Yes or No.
This selection is only valid if DHCP is enabled.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RegWINSServer
Specifies if iLO must be registered with the WINS server.
The possible values are Yes or No.
This selection is only valid if DHCP is enabled.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrimDNSServer
Specifies the IP address of the primary DNS server.
This parameter is only relevant if the DHCP-assigned DNS server address feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SecDNSServer
Specifies the IP address of the secondary DNS server.
This parameter is only relevant if the DHCP-assigned DNS server address feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TerDNSServer
Specifies the IP address of the tertiary DNS server.
This parameter is only relevant if the DHCP-assigned DNS server address feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrimWINSServer
Specifies the IP address of the primary WINS server.
This parameter is only relevant if the DHCP-assigned WINS server address feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SecWINSServer
Specifies the IP address of the secondary WINS server.
This parameter is only relevant if the DHCP-assigned WINS server address feature is disabled.
If an empty string is entered,the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute1Dest
specifies the destination IP addresses of the StaticRoute1.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute1Gateway
Specifies the gateway IP addresses of the StaticRoute1.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute2Dest
specifies the destination IP addresses of the StaticRoute2.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute2Gateway
Specifies the gateway IP addresses of the StaticRoute2.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute3Dest
Specifies the destination IP addresses of the StaticRoute3.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticRoute3Gateway
Specifies the gateway IP addresses of the StaticRoute3.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPSNTP
Determines whether iLO is to get the SNTP time servers and timezone from the DHCP server or whether the user enters that information manually.
The possible values are Yes or No.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SNTPServer1
Specifies the IP address of an IPv4 or IPv6 SNTP server or the FQDN of an SNTPserver.
The FQDN must adhere to the DNS standard, for example time.nist.gov.
The iLO firmware contacts this server for the UTC time.
If iLO is unable to contact this server, it attempts to contact the Secondary Time Server.
This parameter is only relevant if DHCP_SNTP_SETTINGS is set to No.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SNTPServer2
Specifies the IP address of an IPv4 or IPv6 SNTP server or the FQDN of an SNTP server.
The FQDN must adhere to the DNS standard, for example time.nist.gov.
The iLO firmware contacts this server for the UTC time.
If iLO cannot contact the Primary Time Server, it contacts this server.
This parameter is only relevant if DHCP_SNTP_SETTINGS is set to No.
If an empty string is entered, the current value is deleted.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Timezone
Specifies the current time zone from the Olson database.
Using a web browser, in iLO 4, go to Administration?Network?SNTP Settings and select the correct time zone from the Timezone list box.
The text of the time zone name must be entered exactly as it appears in the SNTP Settings time zone list box, (minus the GMT offset).
America/Anchorage or Europe/Zurich are two examples of a valid time zone.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EnclosureIPEnable
This tag can be used on an iLO blade server to force iLO to attempt to get an IP address from the signal backplane in a server enclosure.
The possible values are Yes or No.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -iLONicAutoSelect
allows iLO to automatically select between either the shared or dedicated network ports at startup.
The feature looks for network activity on the ports, and the first port found with network activity is selected for use.
Any changes to this setting do not take effect until the iLO is reset.
Possible values are DISABLED, LINKACT, RCVDATA, DHCP.
Please note this parameter is only supported with iLO4 version 2.00 and later.

```yaml
Type: Object
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
Possible value can be ExternalCommand, XML, RIBCL or PSObject.
Default value is PSObject.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: PSObject
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, Set-HPiLONetworkSetting requires you to provide the values of all required parameters.

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

### PSObject OR array of PSObject OR String OR array of String
You can pipe one IP address or a list of IP addresses as Strings, or one PSObject or list of PSObjects having the iLO details such as IP Address, Hostname, Username and Password to access the iLO.

## OUTPUTS

### 
Use Get-Member to get details of fields in returned objects.

## NOTES
Some forms of command line parameters must be enclosed in quotes for correct interpretation by the system.
For example a string parameter of 1234 is interpreted as a number instead of a string without quotes.
An IP address set of 10.10.10.11,33 would also be misinterpreted. 
Use either "1234" or "10.10.10.11,33" to get the expected results.

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)

