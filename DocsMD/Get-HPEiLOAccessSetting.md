---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOAccessSetting

## SYNOPSIS
Gets the iLO access settings.

## SYNTAX

```
Get-HPEiLOAccessSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOAccessSetting cmdlet gets the respective iLO access settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123

PS C:\> ,$connection | Get-HPEiLOAccessSetting 

AuthenticationFailuresBeforeDelay     : 1
AuthenticationFailureDelayTimeSeconds : 10
iLOFunctionalityEnabled               : Yes
IPMIPort                              : 623
LockConfiguration                     : No
SNMPProtocolEnabled                   : Yes
SNMPPort                              : 1234
SNMPTrapPort                          : 192
SerialOverLANLoggingEnabled           : Yes
AuthenticationFailureLoggingThreshold : Enabled-Every3rdFailure
EnforceAES3DESEncryption              : Yes
HTTPSPort                             : 443
HTTPPort                              : 85
iLORBSUEnabled                        : No
IPMIProtocolEnabled                   : Yes
MinimumPasswordLength                 : 8
PropagateTimeToHost                   : Yes
RBSUPostIP                            : Yes
RemoteConsolePort                     : 17990
RequiredLoginForiLORBSU               : No
SerialCLISpeed                        : 9600
SerialCLIStatus                       : Enabled-AuthenticationRequired
SessionTimeoutMinutes                 : 120
SSHProtocolEnabled                    : Yes
SSHPort                               : 22
VirtualMediaPort                      : 10
IP                                    : 10.20.30.40
Hostname                              : xyz.example.com
Status                                : OK
StatusInfo                            :
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123

PS C:\> Get-HPEiLOAccessSetting  -Connection $connection

AuthenticationFailuresBeforeDelay     : 5
AuthenticationFailureDelayTimeSeconds : 5
AuthenticationFailureLoggingThreshold : Disabled
FederationEnabled                     : No
FederationSupported                   : Yes
FQDN                                  : xyz.com
HTTPPort                              : 5
HTTPProtocolEnabled                   : Yes
HTTPSPort                             : 443
HTTPSProtocolEnabled                  : Yes
iLOFunctionalityEnabled               : Yes
iLORBSUEnabled                        : Yes
IPMIPort                              : 65534
IPMIProtocolEnabled                   : Yes
MinimumPasswordLength                 : 0
PhysicalMonitorHealthStatusEnabled    : No
RIBCLEnabled                          : No
RemoteConsolePort                     : 11212
RemoteConsoleProtocolEnabled          : Yes
RemoteConsoleThumbnailEnabled         : Yes
RequireHostAuthentication             : No
RequiredLoginForiLORBSU               : No
SerialCLISpeed                        : 115200
SerialCLIStatus                       : Disabled
SerialCLIUART                         : Present
SessionTimeoutMinutes                 : 120
SNMPProtocolEnabled                   : No
SNMPPort                              : 255
SNMPTrapPort                          : 162
SSHProtocolEnabled                    : Yes
SSDPNotifyIPv6Scope                   : Organization
SSDPNotifyMulticastIntervalSeconds    : 1800
SSDPNotifyTTL                         : 1
SSDPPort                              : 1900
SSDPProtocolEnabled                   : Yes
SSHPort                               : 2222
VirtualMediaProtocolEnabled           : No
VideoPresenceDetectOverride           : Yes
VideoPresenceDetectOverrideSupported  : Yes
VirtualNICEnabled                     : Yes
VirtualMediaPort                      : 65535
VSPLogDownloadEnabled                 : No
WebGUIEnabled                         : Yes
XMLReplyEnabled                       : Yes
SerialOverLANLoggingEnabled           : No
VSPDlLoggingEnabled                   : No
ServerName                            : 
ServerFQDN                            : 
IP                                    : 10.20.30.40
Hostname                              : xyz.com
Status                                : OK
StatusInfo                            :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOAccessSetting -Connection $connection 

AuthenticationFailuresBeforeDelay     : 1
AuthenticationFailureDelayTimeSeconds : 10
iLOFunctionalityEnabled               : Yes
IPMIPort                              : 623
LockConfiguration                     : No
SNMPProtocolEnabled                   : Yes
SNMPPort                              : 1234
SNMPTrapPort                          : 192
SerialOverLANLoggingEnabled           : Yes
AuthenticationFailureLoggingThreshold : Enabled-Every3rdFailure
EnforceAES3DESEncryption              : Yes
HTTPSPort                             : 443
HTTPPort                              : 85
iLORBSUEnabled                        : No
IPMIProtocolEnabled                   : Yes
MinimumPasswordLength                 : 8
PropagateTimeToHost                   : Yes
RBSUPostIP                            : Yes
RemoteConsolePort                     : 17990
RequiredLoginForiLORBSU               : No
SerialCLISpeed                        : 9600
SerialCLIStatus                       : Enabled-AuthenticationRequired
SessionTimeoutMinutes                 : 120
SSHProtocolEnabled                    : Yes
SSHPort                               : 22
VirtualMediaPort                      : 10
IP                                    : 10.20.30.40
Hostname                              : xyz.example.com
Status                                : OK
StatusInfo                            :

AuthenticationFailuresBeforeDelay     : 5
AuthenticationFailureDelayTimeSeconds : 5
AuthenticationFailureLoggingThreshold : Disabled
FederationEnabled                     : No
FederationSupported                   : Yes
FQDN                                  : xyz.com
HTTPPort                              : 5
HTTPProtocolEnabled                   : Yes
HTTPSPort                             : 443
HTTPSProtocolEnabled                  : Yes
iLOFunctionalityEnabled               : Yes
iLORBSUEnabled                        : Yes
IPMIPort                              : 65534
IPMIProtocolEnabled                   : Yes
MinimumPasswordLength                 : 0
PhysicalMonitorHealthStatusEnabled    : No
RIBCLEnabled                          : No
RemoteConsolePort                     : 11212
RemoteConsoleProtocolEnabled          : Yes
RemoteConsoleThumbnailEnabled         : Yes
RequireHostAuthentication             : No
RequiredLoginForiLORBSU               : No
SerialCLISpeed                        : 115200
SerialCLIStatus                       : Disabled
SerialCLIUART                         : Present
SessionTimeoutMinutes                 : 120
SNMPProtocolEnabled                   : No
SNMPPort                              : 255
SNMPTrapPort                          : 162
SSHProtocolEnabled                    : Yes
SSDPNotifyIPv6Scope                   : Organization
SSDPNotifyMulticastIntervalSeconds    : 1800
SSDPNotifyTTL                         : 1
SSDPPort                              : 1900
SSDPProtocolEnabled                   : Yes
SSHPort                               : 2222
VirtualMediaProtocolEnabled           : No
VideoPresenceDetectOverride           : Yes
VideoPresenceDetectOverrideSupported  : Yes
VirtualNICEnabled                     : Yes
VirtualMediaPort                      : 65535
VSPLogDownloadEnabled                 : No
WebGUIEnabled                         : Yes
XMLReplyEnabled                       : Yes
SerialOverLANLoggingEnabled           : No
VSPDlLoggingEnabled                   : No
ServerName                            : 
ServerFQDN                            : 
IP                                    : 10.20.30.40
Hostname                              : xyz.com
Status                                : OK
StatusInfo                            :
```

This example shows the output with an array of iLO connection objects passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.iLO3.AccessSettingInfo[] or HPE.iLO.Response.Redfish.AccessSettingInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOAccessSetting]()

