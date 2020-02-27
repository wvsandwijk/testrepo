---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOIPv6NetworkSetting

## SYNOPSIS
Modifies the IPv6 network setting of the host server where the iLO is located.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOIPv6NetworkSetting [-OutputType <String>] [-Username <Object>] [-Password <Object>]
 [-Credential <Object>] [-Force] [-Server <Object>] [-IPAddress1 <Object>] [-IPAddress1PrefixLength <Object>]
 [-IPAddress2 <Object>] [-IPAddress2PrefixLength <Object>] [-IPAddress3 <Object>]
 [-IPAddress3PrefixLength <Object>] [-IPAddress4 <Object>] [-IPAddress4PrefixLength <Object>]
 [-DefaultGateway <Object>] [-StaticRoute1Destination <Object>] [-StaticRoute1PrefixLength <Object>]
 [-StaticRoute1Gateway <Object>] [-StaticRoute2Destination <Object>] [-StaticRoute2PrefixLength <Object>]
 [-StaticRoute2Gateway <Object>] [-StaticRoute3Destination <Object>] [-StaticRoute3PrefixLength <Object>]
 [-StaticRoute3Gateway <Object>] [-PrimDNSServer <Object>] [-SecDNSServer <Object>] [-TerDNSServer <Object>]
 [-RegDDNSServer <Object>] [-AddressAutoCfg <Object>] [-PreferredProtocol <Object>] [-DHCPv6Stateless <Object>]
 [-DHCPv6Stateful <Object>] [-DHCPv6RapidCommit <Object>] [-DHCPv6SNTPSetting <Object>]
 [-DHCPv6DNSSever <Object>] [-DHCPv6DomainName <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOIPv6NetworkSetting cmdlet modifies IPv6 network settings.
You must have Configure iLO Settings privilege to execute this command.
The iLO scripting firmware does not attempt to decipher if the network modifications are appropriate for the network environment.
When modifying network settings, be aware of the network commands provided to the management processor.
In some cases, the management processor ignores commands and no error is returned. 
For example, when a script includes the command to enable DHCP and a command to modify the IPv6 address, the IPv6 address is ignored.
Changing the network settings to values that are not correct for the network environment could cause a loss of connectivity to iLO.
When the script has successfully completed, the iLO management processor reboots to apply the changes.
If connectivity to iLO is lost, use the RBSU to reconfigure the network settings to values that are compatible with the network environment.
Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.
Note: For the Static IPv6 Address settings, all the addresses from 1 to 4 should be provided with correct values, otherwise, the unspecified addresses will be deleted by default.
For example, if only address 3 is provided with valid values and other addresses are not specified, current settings of address1, address2, and address4 will all be deleted.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOIPv6NetworkSetting -DHCPv6Stateless Enable
Please enter Server IP or Hostname: 1.4.217.131,187
Do you want to add details for another server?(Y/N): y
Please enter Server IP or Hostname: 1.4.209.53
Do you want to add details for another server?(Y/N): n

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Username for these servers? (Y/N) : n
Enter Username for 1.4.217.131: administrator
Enter Username for 1.4.217.187: alansmith
Enter Username for 1.4.209.53: timhorton

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Password for these servers? (Y/N) : n
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
PS C:\> Set-HPiLOIPv6NetworkSetting -Server $Server -IPAddress1 $IPAddress1 -IPAddress1PrefixLength $IPAddress1PrefixLength -IPAddress3 $IPAddress3 -IPAddress3PrefixLength $IPAddress3PrefixLength 

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Username for these servers? (Y/N) : y
Please enter Username: alansmith

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Password for these servers? (Y/N) : y
Please enter Password : ************
```

This command takes parameters for IPAddress1, IPAddress1PrefixLength, IPAddress3, IPAddress3PrefixLength.
$Server is passed as parameter to Set-HPiLONetworkSetting.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having  iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.
As only IPAdress1 and IPAddress3 are provided, this command will set IPAddress1 and IPAddress3, and clear (delete) the current settings of IPAdress2 and IPAddress4.

### EXAMPLE 3
```
PS C:\> Set-HPiLOIPv6NetworkSetting -Server $Server -Username $Username -Password $Password -StaticRoute1Destination $StaticRoute1Destination -StaticRoute1PrefixLength $StaticRoute1PrefixLength -StaticRoute1Gateway $StaticRoute1Gateway -PreferredProtocol Enable
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords, and some optional parameters.

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format or in a string format.
The PowerShell object may contain fields such as IPv6 Address, Hostname, spn, fwri, pn, MAC address.
The object may also contain the userid and password required to access the iLO.
A range of iLO IPs can also be provided in the same string.IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.

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
It can be PSCredential, PSObject, list of PSCredential and/or PSObject.
Credential should  not be used along with Username/Password.

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

### -IPAddress1
Specifies the list of IPv6 with details in PowerShell object format or in a string format.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.
IPAddress1 must be provided with IPAddress1PrefixLength at the same time with valid values.

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

### -IPAddress1PrefixLength
Specifies the list of Prefix Length to IPAddress1. 
Possible values are from 0 to 128 in Integar.
0 means to clear the current prefix length value. 
If IPAddress1 is valid IPv6 address, IPAddress1PrefixLength cannot be set to 0, because they are not correct IPv6 combination.

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

### -IPAddress2
Specifies the list of IPv6 with details in PowerShell object format or in a string format.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted. 
IPAddress2 must be provided with IPAddress2PrefixLength at the same time with valid values.

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

### -IPAddress2PrefixLength
Specifies the list of Prefix Length to IPAddress2.
Possible values are from 0 to 128 in Integar. 
0 means to clear the current prefix length value. 
If IPAddress2 is valid IPv6 address, IPAddress2PrefixLength cannot be set to 0, because they are not correct IPv6 combination.

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

### -IPAddress3
Specifies the list of IPv6 with details in PowerShell object format or in a string format.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted. 
IPAddress3 must be provided with IPAddress3PrefixLength at the same time with valid values.

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

### -IPAddress3PrefixLength
Specifies the list of Prefix Length to IPAddress3.
Possible values are from 0 to 128 in Integar.
0 means to clear the current prefix length value.
If IPAddress3 is valid IPv6 address, IPAddress3PrefixLength cannot be set to 0, because they are not correct IPv6 combination.

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

### -IPAddress4
Specifies the list of IPv6 with details in PowerShell object format or in a string format.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.
IPAddress4 must be provided with IPAddress4PrefixLength at the same time with valid values.

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

### -IPAddress4PrefixLength
Specifies the list of Prefix Length to IPAddress4.
Possible values are from 0 to 128 in Integar.
0 means to clear the current prefix length value.
If IPAddress4 is valid IPv6 address, IPAddress4PrefixLength cannot be set to 0, because they are not correct IPv6 combination.

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

### -DefaultGateway
Selects the default gateway IPv6 address for iLO if DHCP is not enabled.
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

### -StaticRoute1Destination
Specifies the destination IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.
StaticRoute1Destination must be provided with StaticRoute1Gateway and  StaticRoute1PrefixLength at the same time with valid values.

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
Specifies the gateway IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.

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

### -StaticRoute1PrefixLength
Specifies the list of Prefix Length to StaticRoute1Destination.
Possible values are from 0 to 128 in Integar.
0 means to clear the current prefix length value.

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

### -StaticRoute2Destination
Specifies the destination IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.
StaticRoute2Destination must be provided with StaticRoute2Gateway and  StaticRoute2PrefixLength at the same time with valid values.

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
Specifies the gateway IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::"is entered, the current value is deleted.

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

### -StaticRoute2PrefixLength
Specifies the list of Prefix Length to StaticRoute2Destination.
Possible values are from 0 to 128 in Integer.
0 means to clear the current prefix length value.

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

### -StaticRoute3Destination
Specifies the destination IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.
StaticRoute3Destination must be provided with StaticRoute3Gateway and  StaticRoute3PrefixLength at the same time with valid values.

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
Specifies the gateway IPv6 addresses of the static route.
This parameter is only relevant if the DHCP-assigned static route feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.

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

### -StaticRoute3PrefixLength
Specifies the list of Prefix Length to StaticRoute3Destination.
Possible values are from 0 to 128 in Integer.
0 means to clear the current prefix length value.

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
Specifies the IPv6 address of the primary DNS server.
This parameter is only
relevant if the DHCP-assigned DNS server address feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.

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
This parameter is only
relevant if the DHCP-assigned DNS server address feature is disabled.
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.

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
Possible values are valid IPv6 address, empty string "" and "::".
If "" or "::" is entered, the current value is deleted.

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
Possible values are Enable and Disable.

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

### -AddressAutoCfg
Possible values are Enable and Disable.

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

### -PreferredProtocol
Possible values are Enable and Disable.
If Enable, IPv6 addresses will be used when both IPv6 and IPv4 are available.

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

### -DHCPv6Stateless
Possible values are Enable and Disable.

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

### -DHCPv6Stateful
Possible values are Enable and Disable.

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

### -DHCPv6RapidCommit
Possible values are Enable and Disable.

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

### -DHCPv6SNTPSetting
Determines whether iLO is to get the SNTP time servers and timezone from the DHCP server or whether the user enters that information manually.

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

### -DHCPv6DNSSever
Specifies if the DHCP-assigned DNS server is to be used.
The possible values
are Enable and Disable.
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

### -DHCPv6DomainName
Determines whether iLO uses the domain name provided by the DHCPv6 server.
Value must be either Y (enabled) or N (disabled).
If both DHCP DOMAIN NAME
and DHCPV6 DOMAIN NAME are set to N, iLO uses a static value for the domain name, which is set in DOMAIN_NAME.

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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, Set-HPiLOIPv6NetworkSetting requires you to provide the values of all required parameters.

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

### -OutputType
Specifies the type of required output.
Possible value can be XML, RIBCL,PSObject or ExternalCommand.
Default value is PSObject.Specifies the type of required output.
Possible value can be XML, RIBCL,PSObject or ExternalCommand.
Default value is PSObject.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: PSOject
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

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)

