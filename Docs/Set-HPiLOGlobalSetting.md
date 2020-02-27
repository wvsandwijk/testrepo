---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOGlobalSetting

## SYNOPSIS
Modifies global settings of the host server.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOGlobalSetting [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-SessionTimeout <Object>] [-F8Prompt <Object>] [-HTTPPort <Object>]
 [-HTTPSPort <Object>] [-RemoteConsolePort <Object>] [-MinPassword <Object>] [-iLOFunctEnable <Object>]
 [-VirtualMediaPort <Object>] [-F8LoginRequired <Object>] [-SSHPort <Object>] [-SSHStatus <Object>]
 [-SerialCLIStatus <Object>] [-SerialCLISpeed <Object>] [-RBSUPOSTIP <Object>] [-EnforceAES <Object>]
 [-AuthenticationFailureLogin <Object>] [-SNMPAccess <Object>] [-SNMPPort <Object>] [-SNMPTrapPort <Object>]
 [-RemoteSysLog <Object>] [-RemoteSysLogPort <Object>] [-RemoteSysLogServerAddress <Object>]
 [-AlertMail <Object>] [-AlertMailEmail <Object>] [-AlertMailSenderDomain <Object>]
 [-AlertMailSMTPServer <Object>] [-IPMIDCMIOverLAN <Object>] [-VSPLog <Object>] [-PropagateTimeToHost <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOGlobalSetting cmdlet modifies global settings.
You must have Configure iLO Settings privilege to execute this command.
The iLO device (not the server) resets automatically to make changes to port settings effective.
Setting the iLOFunctEnabled to No disables the iLO management functions.
If disabled, you must use the iLO Security Override Switch on the server system board and the iLO RBSU (F8 key) to re-enable iLO.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOGlobalSetting -SessionTimeout 15 -HTTPPort 80 -HTTPSPort 82 -iLOFunctEnable Yes -EnforceAES No 
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
PS C:\> Set-HPiLOGlobalSetting -Server $Server -SessionTimeout 15 -HTTPPort 80 -HTTPSPort 82 -iLOFunctEnable Yes -EnforceAES No

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

$Server is passed as parameter to Set-HPiLOGlobalSetting.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> $server | Set-HPiLOGlobalSetting
```

This command shows that the Server object is piped to the cmdlet.
This object contains a list of server IP/Hostnames with the required parametes and the values to be set.
The piped object should be a PSCustomObject or a list of PSCustomObject.
Each of the powershell object should have all the parameters that are to be modified.

### EXAMPLE 4
```
PS C:\> Set-HPiLOGlobalSetting -Server $Server -Username $Username -Password $Password -SessionTimeout 15 -HTTPPort 80 -HTTPSPort 82 -iLOFunctEnable Yes -EnforceAES No
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords which are required parameters.
Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers and corresponding username and password values must be provided as parameters.

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

### -SessionTimeout
Determines the maximum session timeout value in minutes.
The accepted values are 0, 15, 30, 60, and 120.
A value of 0 specifies infinite timeout.

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

### -F8Prompt
Determines if the F8 prompt for ROM-based configuration appears during POST.
The possible values are Yes, Y, Enable and On to enable F8 prompt to appear during POST or No, N Disable and Off to disable F8 prompt during POST .

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

### -HTTPPort
Specifies the HTTP port number.

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

### -HTTPSPort
Specifies the HTTPS (SSL) port number.

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

### -RemoteConsolePort
Specifies the port used for remote console.

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

### -MinPassword
Specifies how many characters are required in all user passwords.
The value can be from zero to 39 characters.

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

### -iLOFunctEnable
Determines if the Lights-Out functionality is enabled or disabled for iLO.
The possible values are Yes and Y to enable or No and N to disable.
This parameter is case insensitive.

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

### -VirtualMediaPort
Specifies the port used for virtual media.

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

### -F8LoginRequired
Determines if login credentials are required to access the RBSU for iLO.
The possible values are Yes and Y if login credentials are needed or No and N of login credentials are not needed.

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

### -SSHPort
Specifies the port used for SSH connection on iLO 4.
The processor must be reset if this value is changed.

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

### -SSHStatus
Determines if SSH is enabled.
The valid values are Yes, Y, Enable and On to enable SSH functionality or No, N, Disable or Off to disable SSH functionality.

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

### -SerialCLIStatus
Specifies the status of the CLI.
The possible values include:
• 0-No change
• 1-Disabled
• 2-Enabled (no authentication required)
• 3-Enabled (authentication required)

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

### -SerialCLISpeed
Specifies the CLI port speed.
NOTE: The serial port speed set using this parameter must match the speed of the serial port set in the RBSU.
The possible values include:
• 0-No change
• 1-9,600 bps
• 2-19,200 bps
• 3-38,400 bps
• 4-57,600 bps
• 5-115,200 bps

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

### -RBSUPOSTIP
Determines whether the iLO IP address is displayed during server POST process.
The valid values are Yes, Y, Enable and On to display the iLO 4 IP address or No, N, Disable and Off to not display the iLO 4 IP address.

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

### -EnforceAES
Determines if iLO enforces the use of AES/3DES encryption ciphers over the iLO interface, SSH, and XML connections.
The possible values are Yes and Y to enforce use of AES/3DES or No and N to not enforce use of AES/3DES.

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

### -AuthenticationFailureLogin
Specifies logging criteria for failed authentications.
Possible values include:
• 0-Disabled
• 1-Enabled (records every authentication failure)
• 2-Enabled (records every second authentication failure)
• 3-Enabled (records every third authentication failure: this is the default value.)
• 5-Enabled (records every fifth authentication failure)

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
Determines whether iLO should respond to external SNMP requests.
Valid values are Y, Yes and Enable to enable SNMP access or N, No and Disable to disable SNMP access.
If disabled, the iLO Management Engine continues to operate and the information displayed in the iLO web interface is updated, but no alerts are generated and SNMP access is not permitted.
iLO 4 - 1.20 or later
iLO 3 - None

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
Sets the port used for SNMP communications.
The industry standard (default) SNMP port is 161 for SNMP access.
Value must be a valid port.
iLO 4 - 1.20 or later
iLO 3 - None

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
Sets the port to which SNMP traps (alerts) are sent.
The industry standard (default) SNMP trap port is 162.
Value must be a valid port.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -RemoteSysLog
Determines whether iLO should send event notification messages to a Syslog server.
Valid values are Y, Yes, Enable and On to enable sending event notification messages or N, No, Disable and Off to disable sending of notifiacation messages to syslog server.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -RemoteSysLogPort
Sets the port number through which the Syslog server listens.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -RemoteSysLogServerAddress
Sets the IP address, FQDN, IPv6 name, or short name of the server running the Syslog service.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -AlertMail
Determines whether ILO should send alert conditions detected independently of the host operating system via email.
The valid values are Y, Yes, Enable and On to enable this feature or N, No, Disable and Off to disable this feature.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -AlertMailEmail
Sets the destination email address for iLO email alerts.
Value must be a single email address no longer than 63 characters, and must be in standard email address format.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -AlertMailSenderDomain
Sets the domain name to be used in the sender (From) email address.
Value is formed by using the iLO name as the hostname and the subject string as the domain name.
If this value is left blank or not specified, the iLO domain name is used (which may not be accepted by all SMTP servers.) The maximum string length is 63 characters.
This parameter is not supported for iLO 3.
Do not specify this parameter for iLO 3.
iLO 4 - 1.20 or later
iLO 3 - None

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

### -AlertMailSMTPServer
Sets the IP address or DNS name of the SMTP server or the MSA.
This server cooperates with the MTA to deliver the email.
The maximum string length is 63 characters.
Note that the SMTP server specified by support unauthenticated SMTP connections on port 25.
Firmware support:
iLO 4 - 1.20 or later
iLO 3 - None

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

### -IPMIDCMIOverLAN
Determines whether you can send industry-standard IPMI and DCMI commands over the LAN using a client-side application.
Server-side IPMI/DCMI applications are still functional even when this setting is disabled.
The valid values are Y, Yes, Enable and On to enable this feature or N, No, Disable and Off to disable this feature.
Firmware support:
iLO 4 - 1.20 or later
iLO 3 - 1.55 or later

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

### -VSPLog
Determines whether the virtual serial port output from the server is captured.
Valid values are Y, Yes, Enable and On to enable this feature or N, No, Disable and Off to disable this feature.
The parameter is not case sensitive.
Firmware support:
iLO 4 - 1.20 or later
iLO 3 - None

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

### -PropagateTimeToHost
Determines whether iLO sets the system host time to match the iLO time.
Valid values are Y, Yes, Enable and On to enable this feature or N, No, Disable and Off to disable this feature.
If enabled, the propagation time set occurs whenever the iLO is cold-booted.
The parameter is not case sensitive.
Firmware support:
iLO 4 - 1.30 or later
iLO 3 - 1.60 or later

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
Without this parameter, Set-HPiLOGlobalSetting requires you to provide the values of all required parameters.

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

