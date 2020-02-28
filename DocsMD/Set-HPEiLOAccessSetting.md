---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOAccessSetting

## SYNOPSIS
Modifies access settings of the host server.

## SYNTAX

```
Set-HPEiLOAccessSetting [-Connection] <Connection[]> [-SessionTimeoutMinutes <Int32[]>]
 [-iLORBSUEnabled <String[]>] [-HTTPPort <Int32[]>] [-HTTPProtocolEnabled <String[]>] [-HTTPSPort <Int32[]>]
 [-HTTPSProtocolEnabled <String[]>] [-RemoteConsolePort <Int32[]>] [-RemoteConsoleProtocolEnabled <String[]>]
 [-RemoteConsoleThumbnailEnabled <String[]>] [-RequireHostAuthentication <String[]>]
 [-FederationEnabled <String[]>] [-MinimumPasswordLength <Int32[]>] [-VirtualMediaPort <Int32[]>]
 [-XMLReplyEnabled <String[]>] [-RequiredLoginForiLORBSU <String[]>] [-SSHPort <Int32[]>]
 [-SSHProtocolEnabled <String[]>] [-SerialCLIStatus <String[]>] [-SerialCLISpeed <Int32[]>]
 [-RBSUPostIP <String[]>] [-EnforceAES3DESEncryption <String[]>]
 [-AuthenticationFailureLoggingThreshold <String[]>] [-AuthenticationFailureDelayTimeSeconds <Int32[]>]
 [-AuthenticationFailuresBeforeDelay <Int32[]>] [-SNMPProtocolEnabled <String[]>] [-SNMPPort <Int32[]>]
 [-SNMPTrapPort <Int32[]>] [-IPMIProtocolEnabled <String[]>] [-SerialOverLANLoggingEnabled <String[]>]
 [-SSDPNotifyIPv6Scope <String[]>] [-SSDPNotifyMulticastIntervalSeconds <Int32[]>] [-SSDPNotifyTTL <Int32[]>]
 [-SSDPProtocolEnabled <String[]>] [-VirtualMediaProtocolEnabled <String[]>] [-RIBCLEnabled <String[]>]
 [-IPMIPort <Int32[]>] [-VSPLogDownloadEnabled <String[]>] [-VSPDlLoggingEnabled <String[]>]
 [-VirtualNICEnabled <String[]>] [-VideoPresenceDetectOverride <String[]>] [-ServerFQDN <String[]>]
 [-ServerName <String[]>] [-LockConfiguration <String[]>] [-DefaultUserName <String[]>]
 [-PhysicalMonitorHealthStatusEnabled <String[]>] [-DefaultPassword <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOAccessSetting cmdlet modifies global settings.
You must have the Configure iLO Settings privilege to execute this cmdlet.
In case of iLO 4, the iLO device (not the server) resets automatically to make changes to port settings effective.
In case of iLO 5 servers, you must reset iLO to apply the changes.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOAccessSetting -AuthenticationFailureLoggingThreshold Enabled-Every2ndFailure -AuthenticationFailureDelayTimeSeconds 2 -AuthenticationFailuresBeforeDelay 1 -RemoteSyslogEnabled Yes -RemoteSyslogPort 12 -RemoteSyslogServer 1.1.1.1 -EnforceAES3DESEncryption Yes
```

This example sets the value of Access settings on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PSC:\> ,$connection | Set-HPEiLOAccessSetting -SSDPNotifyIPv6Scope Link -SSDPNotifyMulticastIntervalSeconds 10 -SSDPNotifyTTL 10 -SSDPProtocolEnabled yes
```

This example sets the value of Access settings on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Set-HPEiLOAccessSetting -Connection $connection -AuthenticationFailureLoggingThreshold Enabled-Every2ndFailure -AuthenticationFailureDelayTimeSeconds 2 -AuthenticationFailuresBeforeDelay 1 -RemoteSyslogEnabled Yes -RemoteSyslogPort 12 -RemoteSyslogServer 1.1.1.1 -EnforceAES3DESEncryption Yes -SessionTimeoutMinutes 15 -iLORBSUEnabled Yes -HTTPPort 123 -HTTPSPort 321 -RemoteConsolePort 100 -MinimumPasswordLength 10
```

This example sets the value of Access settings on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -SessionTimeoutMinutes
Determines the maximum session timeout value in minutes.
The accepted values are 0, 15, 30, 60, and 120.
A value of 0 specifies infinite timeout.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 0, 15, 30, 60, 120

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -iLORBSUEnabled
Determines if the F8 prompt for a ROM-based configuration appears during POST.
The possible values are Yes to enable the F8 prompt to appear during POST and No to disable the F8 prompt during POST.

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

### -HTTPPort
Specifies the HTTP port number.

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

### -HTTPProtocolEnabled
Indicates whether HTTP is enabled for the manager.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -HTTPSPort
Specifies the HTTPS (SSL) port number.

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

### -HTTPSProtocolEnabled
Indicates whether HTTPS is enabled for the manager.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -RemoteConsolePort
Specifies the port used for remote console.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases: KVMIPPort

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RemoteConsoleProtocolEnabled
Indicates whether RemoteConsole is enabled for the manager.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -RemoteConsoleThumbnailEnabled
This property enables or disables the accessibility of remote console thumbnail image in iLO.
Disabling this property will not disable remote console feature.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -RequireHostAuthentication
Determines whether authentication is required for host-based utilities which use CHIF (typically use of CHIF requires Administrator/root credentials).
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -FederationEnabled
Indicates whether Federation is enabled for the manager.
The possible values are Yes and No.

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

### -MinimumPasswordLength
Specifies how many characters are required in all user passwords.
The value can be from 8 to 39 characters.

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

### -VirtualMediaPort
Specifies the port used for virtual media.

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

### -XMLReplyEnabled
Determines whether management processor responds to anonymous XML discovery requests.
The supported values are Yes and No.

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

### -RequiredLoginForiLORBSU
Determines if login credentials are required to access the RBSU for iLO.
The possible values are Yes if login credentials are needed and No if login credentials are not needed.

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

### -SSHPort
Specifies the port used for SSH connection.
The processor must be reset if this value is changed.

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

### -SSHProtocolEnabled
Determines if SSH is enabled.
The valid values are Yes to enable the SSH functionality and No to disable the SSH functionality.

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

### -SerialCLIStatus
Specifies the status of the CLI.
The possible values include Disabled, Enabled-NoAuthenticationRequired, and Enabled-AuthenticationRequired.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, Enabled-NoAuthenticationRequired, Enabled-AuthenticationRequired

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SerialCLISpeed
Specifies the CLI port speed.
The possible values include: 9,600 bps, 19,200 bps, 38,400 bps, 57,600 bps, and 115,200 bps.
NOTE: The serial port speed set using this parameter must match the speed of the serial port set in the RBSU.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 9600, 19200, 38400, 57600, 115200

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RBSUPostIP
Determines whether the iLO IP address is displayed during the server POST process.
The valid values are Yes to display the IP address and No to not display the IP address.
This parameter is not supported on iLO 5 servers.

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

### -EnforceAES3DESEncryption
Determines if iLO enforces the use of AES/3DES encryption ciphers over the iLO interface, SSH, and XML connections.
The possible values are Yes to enforce the use of AES/3DES and No to not enforce the use of AES/3DES.
This parameter is not supported on iLO 5 servers.

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

### -AuthenticationFailureLoggingThreshold
Specifies logging criteria for failed authentications.
Possible values include:
• Disabled
• Enabled-EveryFailure
• Enabled-Every2ndFailure
• Enabled-Every3rdFailure(this is the default value)
• Enabled-Every5thFailure

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, Enabled-EveryFailure, Enabled-Every2ndFailure, Enabled-Every3rdFailure, Enabled-Every5thFailure

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthenticationFailureDelayTimeSeconds
Specifies delay time in seconds between failed login authentications.
Possible values include:
• 2 - 2 seconds
• 5 - 5 seconds
• 10 - 10 seconds
• 30 - 30 seconds

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 2, 5, 10, 30

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthenticationFailuresBeforeDelay
Specifies the number of authentication failures allowed before delaying login.
Possible values include:
• 0 - Every failure causes delay
• 1 - One failure causes no delay
• 3 - Three failures cause no delay
• 5 - Five failures cause no delay

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 0, 1, 3, 5

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SNMPProtocolEnabled
Determines whether iLO should respond to external SNMP requests.
Valid values are Yes to enable SNMP access and No to disable SNMP access.
If disabled, the iLO Management Engine continues to operate and the information displayed in the iLO web interface is updated, but no alerts are generated and SNMP access is not permitted.

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

### -SNMPPort
Sets the port used for SNMP communications.
The industry standard (default) SNMP port is 161 for SNMP access.
Value must be a valid port.

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

### -SNMPTrapPort
Sets the port to which SNMP traps (alerts) are sent.
The industry standard (default) SNMP trap port is 162.
Value must be a valid port.

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

### -IPMIProtocolEnabled
Determines whether you can send industry-standard IPMI and DCMI commands over the LAN using a client-side application.
Server-side IPMI/DCMI applications are still functional even when this setting is disabled.
The valid values are Yes to enable this feature and No to disable this feature.

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

### -SerialOverLANLoggingEnabled
Indicates whether Serial Over LAN (SOL) or Virtual Serial Port (VSP) logging is enabled.
Valid values are Yes to enable this feature or No to disable this feature.

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

### -SSDPNotifyIPv6Scope
The scope for IPv6 Notify messages for SSDP.
The possible values are:
• Link
• Site
• Organization
This parameter is supported only on iLO 5 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Link, Site, Organization

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SSDPNotifyMulticastIntervalSeconds
Indicates how often multicast is performed for SSDP.
This parameter is supported only on iLO 5 servers.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:
Accepted values: 0, 30, 60, 120, 300, 600, 900, 1800

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SSDPNotifyTTL
The Time to Live (TTL) hop count for SSDP Notify messages.
This parameter is supported only on iLO 5 servers.

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

### -SSDPProtocolEnabled
Indicates whether SSDP is enabled for the manager.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -VirtualMediaProtocolEnabled
Indicates whether Virtual Media is enabled for the manager.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -RIBCLEnabled
This property enables or disables RIBCL for the management processor.
The management processor will require a reset when this field is modified.The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -IPMIPort
The IPMI over LAN port number.

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

### -VSPLogDownloadEnabled
This property enables or disables download of the downloadable Virtual Serial Port (VSP) log.
Valid values are Yes to enable this feature or No to disable this feature.
This parameter is supported only on iLO 5 servers.

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

### -VSPDlLoggingEnabled
This property enables or disables logging to the downloadable Virtual Serial Port (VSP) log.
Valid values are Yes to enable this feature or No to disable this feature.
This parameter is supported only on iLO 5 servers.

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

### -VirtualNICEnabled
Indicates whether the Virtual Network Interface is enabled or not.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -VideoPresenceDetectOverride
This property controls video presence detection on the VGA port.
When set to 'Yes', firmware workaround detects some KVMs that are not automatically supported.
When set to 'No',  detects hardware-based automatic video presence.
The possible values are Yes and No.
This parameter is supported only on iLO 5 servers.

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

### -ServerFQDN
Specifies the ServerFQDN.

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

### -ServerName
Specifies the ServerName.

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

### -LockConfiguration
Specifies the Lock configuration settings.
Supported values are Yes or No.

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

### -DefaultUserName
The parameter default name used to log in to the management processor when factory reset is performed.

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

### -PhysicalMonitorHealthStatusEnabled
Enables or Disables the display of Server Health Status on a physical monitor attached to the system.

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

### -DefaultPassword
This parameter default password is used to log in to the management processor when factory reset is performed.

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
System.Int32[]
System.String[]
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
You cannot do a GET on the DefaultUsername and DefaultPassword attributes as these attributes are stored in iLO internal memory and are only visible and accessible after Factory Reset.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOAccessSetting]()

[Reset-HPEiLO]()

