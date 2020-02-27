---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOSNMPIMSetting

## SYNOPSIS
Modifies the respective iLO SNMP IM settings.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOSNMPIMSetting [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-WebAgentIPAddress <Object>] [-SNMPAddress1 <Object>] [-SNMPAddress2 <Object>]
 [-SNMPAddress3 <Object>] [-OSTraps <Object>] [-SNMPPassthroughStatus <Object>] [-RIBTraps <Object>]
 [-CIMSecurityMask <Object>] [-SNMPAddress1ROCommunity <Object>] [-SNMPAddress1TrapCommunityVersion <Object>]
 [-SNMPAddress1TrapCommunityValue <Object>] [-SNMPAddress2ROCommunity <Object>]
 [-SNMPAddress2TrapCommunityVersion <Object>] [-SNMPAddress2TrapCommunityValue <Object>]
 [-SNMPAddress3ROCommunity <Object>] [-SNMPAddress3TrapCommunityVersion <Object>]
 [-SNMPAddress3TrapCommunityValue <Object>] [-AgentlessManagementEnable <Object>] [-SNMPSysContact <Object>]
 [-SNMPSysLocation <Object>] [-SNMPSystemRole <Object>] [-SNMPSystemRoleDetail <Object>]
 [-ColdStartTrapBroadcast <Object>] [-TrapSourceIdentifier <Object>] [-SNMPAccess <Object>]
 [-SNMPPort <Object>] [-SNMPTrapPort <Object>] [-SNMPV1Traps <Object>] [-SNMPV3EngineID <Object>]
 [-SecurityName1 <Object>] [-AuthnProtocol1 <Object>] [-AuthnPassphrase1 <Object>] [-PrivacyProtocol1 <Object>]
 [-PrivacyPassphrase1 <Object>] [-SecurityName2 <Object>] [-AuthnProtocol2 <Object>]
 [-AuthnPassphrase2 <Object>] [-PrivacyProtocol2 <Object>] [-PrivacyPassphrase2 <Object>]
 [-SecurityName3 <Object>] [-AuthnProtocol3 <Object>] [-AuthnPassphrase3 <Object>] [-PrivacyProtocol3 <Object>]
 [-PrivacyPassphrase3 <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOSNMPIMSetting cmdlet modifies SNMP and Insight Manager settings.
You must have Configure iLO Settings privilege to execute this command.
Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOSNMPIMSetting -WebAgentIPAddress 1.4.217.113 -SNMPAddress1 1.4.237.36 SNMPPort 12345
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
PS C:\> Set-HPiLOSNMPIMSetting PSObject -Server $Server -WebAgentIPAddress 1.4.217.113 -SNMPAddress1 1.4.237.36 SNMPPort 12345 -SNMPSystemRole $SNMPSystemRole -SNMPSystemRoleDetail $SNMPSystemRoleDetail

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

$Server is passed as parameter to Set-HPiLOSNMPIMSetting along with parameters whose values are to be modified.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Set-HPiLOSNMPIMSetting -Server 10.84.217.93 -Username admin -Password admin123 -WebAgentIPAddress $WebAgentIPAddress -SNMPAddress1 $SNMPAddress1 -OSTraps $OSTraps -SNMPAddress1ROCommunity $SNMPAddress1ROCommunity -SNMPAddress1TrapCommunityVersion $SNMPAddress1TrapCommunityVersion -SNMPAddress1TrapCommunityValue $SNMPAddress1TrapCommunityValue -AgentlessManagementEnable $AgentlessManagementEnable -SNMPSysContact $SNMPSysContact -SNMPSysLocation $SNMPSysLocation -SNMPSystemRole $SNMPSystemRole -SNMPSystemRoleDetail $SNMPSystemRoleDetail -SNMPV1Traps $SNMPV1Traps -SNMPV3EngineID $SNMPV3EngineID -SecurityName1 $SecurityName1 -AuthnProtocol1 $AuthnProtocol1 -AuthnPassphrase1 $AuthnPassphrase1 -PrivacyProtocol1 $PrivacyProtocol1 -PrivacyPassphrase1 $PrivacyPassphrase1
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

### -WebAgentIPAddress
Specifies the address for the Web-enabled agents.
The value for this element has a maximum length of 50 characters.
It can be any valid IP address.
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

### -SNMPAddress1
Specifies the address that receive traps sent to the user.
Each of these parameters can be any valid IP address.

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

### -SNMPAddress2
Specifies the address that receive traps sent to the user.
Each of these parameters can be any valid IP address.

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

### -SNMPAddress3
Specifies the address that receive traps sent to the user.
Each of these parameters can be any valid IP address.

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

### -OSTraps
Determines if the user is allowed to receive SNMP traps that are generated by the operating system.
The possible values are Yes and No.
By default, the value is set to No.

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

### -SNMPPassthroughStatus
Determines if iLO can receive and send SNMP requests to and from the host OS.
By default, the value is set to Yes.

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

### -RIBTraps
Determines if the user is allowed to receive SNMP traps that are generated by the RIB.
The possible values are Yes and No.
By default, the value is set to No.

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

### -CIMSecurityMask
Accepts the integers 1 or 3.
The possible values are:
• 1-None (no data is returned)
• 3-Enabled

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

### -SNMPAddress1ROCommunity
Configures the SNMP read-only community string.
Values can include a community string, optionally followed by an IP address or FQDN.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress1TrapCommunityVersion
Configures the SNMP trap community string.
Specifies the version for the Trap Community being set for SNMPAddress1
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress1TrapCommunityValue
Configures the SNMP trap community string.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress2ROCommunity
Configures the SNMP read-only community string.
Values can include a community string, optionally followed by an IP address or FQDN.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress2TrapCommunityVersion
Configures the SNMP trap community string.
Specifies the version for the Trap Community being set for SNMPAddress2
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress2TrapCommunityValue
Configures the SNMP trap community string.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress3ROCommunity
Configures the SNMP read-only community string.
Values can include a community string, optionally followed by an IP address or FQDN.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress3TrapCommunityVersion
Configures the SNMP trap community string.
Specifies the version for the Trap Community being set for SNMPAddress3
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAddress3TrapCommunityValue
Configures the SNMP trap community string.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AgentlessManagementEnable
Enables or disables agentless management.
Valid values are Yes, Y, Enable, On enables agentless management or No, N, Disable, Off disables agentless management.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPSysContact
Specifies the system administrator or server owner.
The string can be a maximum of 49 characters long, and can include information such as a name, email address, or phone number.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPSysLocation
@{Text=}

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

### -SNMPSystemRole
Describes the server role or function, and can be a maximum of 64 characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPSystemRoleDetail
@{Text=}

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

### -ColdStartTrapBroadcast
Specifies whether to broadcast to the subnet broadcast IP address if there are no trap destinations configured for SNMPAddress1, SNMPAddress2, or SNMPAddress3.
Valid values are Yes or No.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -TrapSourceIdentifier
Allows the substitution of the OS Hostname for the sysName when SNMP traps are generated from iLO.
Value must be a valid iLO hostname or OS hostname.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPAccess
Enables SNMP access.
Valid values are Y/Yes/Enable/On (enabled) and N/No/Disable/Off (disabled). 
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPPort
Sets the port on which SNMP should communicate.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPTrapPort
Sets the port on which SNMP traps are sent.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPV1Traps
Sets whether SNMPv1 traps are sent.
Valid values are Y and N.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SNMPV3EngineID
Sets the unique identifier of an SNMP engine belonging to a SNMP agent entity.
Value must be hexadecimal string, between 6 and 32 characters long (for example, 0x01020304abcdef).
The value must be an even length, excluding the preceding "0x."
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SecurityName1
Sets the user profile name for the user profile 1 available for SNMPv3 authentication.
Value must be 1 to 32 alphanumeric characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnProtocol1
Sets the message digest algorithm to use for encoding the authorization passphrase for the user profile 1 available for SNMPv3 authentication.
The message digest is calculated over an appropriate portion of an SNMP message and included as part of the message sent to the recipient.
Valid values are MD5 or SHA.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnPassphrase1
Sets the passphrase to be used for sign operations for the user profile 1 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyProtocol1
Sets the encryption algorithm to be used for encoding the privacy passphrase for the user profile 1 available for SNMPv3 authentication.
A portion of an SNMP message in encrypted before transmission.
Valid values are DES or AES.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyPassphrase1
Sets the passphrase used for encrypt operations for the user profile 1 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
If this value is omitted, the value for AuthnPassphrase1 is used.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SecurityName2
Sets the user profile name for the user profile 2 available for SNMPv3 authentication.
Value must be 1 to 32 alphanumeric characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnProtocol2
Sets the message digest algorithm to use for encoding the authorization passphrase for the user profile 2 available for SNMPv3 authentication.
The message digest is calculated over an appropriate portion of an SNMP message and included as part of the message sent to the recipient.
Valid values are MD5 or SHA.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnPassphrase2
Sets the passphrase to be used for sign operations for the user profile 2 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyProtocol2
Sets the encryption algorithm to be used for encoding the privacy passphrase for the user profile 2 available for SNMPv3 authentication.
A portion of an SNMP message in encrypted before transmission.
Valid values are DES or AES.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyPassphrase2
Sets the passphrase used for encrypt operations for the user profile 2 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
If this value is omitted, the value for AuthnPassphrase2 is used.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -SecurityName3
Sets the user profile name for the user profile 3 available for SNMPv3 authentication.
Value must be 1 to 32 alphanumeric characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnProtocol3
Sets the message digest algorithm to use for encoding the authorization passphrase for the user profile 3 available for SNMPv3 authentication.
The message digest is calculated over an appropriate portion of an SNMP message and included as part of the message sent to the recipient.
Valid values are MD5 or SHA.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -AuthnPassphrase3
Sets the passphrase to be used for sign operations for the user profile 3 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyProtocol3
Sets the encryption algorithm to be used for encoding the privacy passphrase for the user profile 3 available for SNMPv3 authentication.
A portion of an SNMP message in encrypted before transmission.
Valid values are DES or AES.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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

### -PrivacyPassphrase3
Sets the passphrase used for encrypt operations for the user profile 3 available for SNMPv3 authentication.
Value must be 8 to 49 characters long.
If this value is omitted, the value for AuthnPassphrase3 is used.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.

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
Without this parameter, Set-HPiLOSNMPIMSetting requires you to provide the values of all required parameters.

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

