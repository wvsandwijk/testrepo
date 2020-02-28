---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLORemoteSupportSetting

## SYNOPSIS
Sets the web proxy settings for servers that use Insight Online direct connect remote support.

## SYNTAX

### UsernamePasswordSet (Default)
```
Set-HPEiLORemoteSupportSetting [-Connection] <Connection[]> [-WebProxyServer <String[]>]
 [-WebProxyPort <UInt32[]>] [-WebProxyUsername <String[]>] [-WebProxyPassword <String[]>]
 [-MaintenanceModeEnabled <String[]>] [-DurationInMinutes <UInt32[]>] [-OutputType <String>]
 [<CommonParameters>]
```

### CredentialSet
```
Set-HPEiLORemoteSupportSetting [-Connection] <Connection[]> [-WebProxyServer <String[]>]
 [-WebProxyPort <UInt32[]>] [-WebProxyCredential <PSCredential[]>] [-MaintenanceModeEnabled <String[]>]
 [-DurationInMinutes <UInt32[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLORemoteSupportSetting cmdlet sets proxy settings like proxy server and the Internet connection port to the remote server.
Proxy settings apply only to direct connect registrations.
This cmdlet is used to set ERS and IRS related settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLORemoteSupportSetting -WebProxyServer 1.1.1.1 -WebProxyPort 1234 -WebProxyUsername admin -WebProxyPassword admin123
```

This examples sets the web proxy setting on iLO 4 or iLO 5 server with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLORemoteSupportSetting -Connection $connection -WebProxyServer 1.1.1.1 -WebProxyPort 1234 -WebProxyCredential $credential
```

This examples sets the Web proxy on iLO 4 and iLO 5 servers with an array of connection object passed as named parameter.

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

### -WebProxyServer
Specifies the web proxy URL to be configured as the proxy server for connecting to the target server.

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

### -WebProxyPort
Sets the port for configuring the web proxy URL to connect to the target server.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WebProxyUsername
Specifies the web proxy username.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WebProxyPassword
Specifies the web proxy password.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MaintenanceModeEnabled
Use maintenance mode when you perform maintenance on a server.
In maintenance mode, any events or messages that are sent to Insight RS or Insight Online are flagged to indicate that the event requires no action.
This feature helps Hewlett Packard Enterprise to determine whether to open a support case.
Supported only on iLO 5 servers.

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

### -DurationInMinutes
Specifies the time in minutes for which the iLO is in maintenance mode.
This parameter must be provided when  'MaintenanceModeEnabled' parameter value is 'Yes'.
Supported only on iLO 5 servers.

```yaml
Type: UInt32[]
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

### -WebProxyCredential
This object is based on the username and password used to configure the web proxy settings required for connecting with the HP Insight Online Remote Server.
WebProxyCredential should not be used along with WebProxyUsername/WebProxyPassword.

```yaml
Type: PSCredential[]
Parameter Sets: CredentialSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.Int32[]
System.Management.Automation.PSCredential[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLORemoteSupportSetting]()

[Register-HPEiLORemoteSupportSetting]()

[Unregister-HPEiLORemoteSupportSetting]()

