---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Register-HPEiLORemoteSupportSetting

## SYNOPSIS
Registers a supported server for Insight Online direct connect remote support.

## SYNTAX

### UsernamePasswordSet (Default)
```
Register-HPEiLORemoteSupportSetting [-Connection] <Connection[]> -InterfaceType <String[]>
 [-HPEPassportUserID <String[]>] [-HPEPassportPassword <String[]>] [-WebProxyServer <String[]>]
 [-WebProxyPort <UInt32[]>] [-WebProxyUsername <String[]>] [-WebProxyPassword <String[]>]
 [-DestinationURL <String[]>] [-DestinationPort <UInt32[]>] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

### CredentialSet
```
Register-HPEiLORemoteSupportSetting [-Connection] <Connection[]> -InterfaceType <String[]>
 [-HPEPassportCredential <PSCredential[]>] [-WebProxyServer <String[]>] [-WebProxyPort <UInt32[]>]
 [-WebProxyCredential <PSCredential[]>] [-DestinationURL <String[]>] [-DestinationPort <UInt32[]>]
 [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Register-HPEiLORemoteSupportSetting cmdlet sets the registration of your device to HPE Insight Online Remote Server using a direct connect method.
Once the device is registered with Insight Online, the remote server will poll all iLO for any hardware failures and collect information.
This cmdlet is used to register ERS and IRS settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Register-HPEiLORemoteSupportSetting -InterfaceType DirectConnect -HPEPassportUserID abcd@xyz.com -HPEPassportPassword admin -WebProxyServer 1.1.1.1 -WebProxyPort 2233 -WebProxyUsername admin1 -WebProxyPassword admin123
```

This cmdlet sets the ERS direct connect setting on iLO 4 or iLO 5 server with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Register-HPEiLORemoteSupportSetting -InterfaceType CentralConnect -DestinationURL 15.15.15.15 -DestinationPort 2354
```

This cmdlet sets the IRS setting on iLO 4 or iLO 5 server with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Register-HPEiLORemoteSupportSetting -Connection $connection -InterfaceType CentralConnect -DestinationURL 15.15.15.15 -DestinationPort 2354
```

This cmdlet sets the remote support setting on iLO 4 and iLO 5 servers with an array of connection object passed as named parameter.

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
The Remote Support connect model type.
The supported values are CentralConnect and DirectConnect.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: DirectConnect, CentralConnect

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -HPEPassportUserID
Specifies the HPE Passport username for all the iLOs or a list of usernames for each iLO in the input iLO list.

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

### -HPEPassportPassword
Specifies the HPE Passport password for all the iLOs or a list of passwords for each iLO in the input iLO list.

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

### -DestinationURL
Specifies the hostname or IP of the IRS server

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

### -DestinationPort
Specifies the destination port of the IRS server.
Values supported are between 1 and 65535.

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

### -HPEPassportCredential
This object array is based on HPEPassportUserID and HPEPassportPassword to connect with the HPE Insight Online Remote Server.
HPEPassportCredential should not be used along with HPEPassportUserID/HPEPassportPassword.

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
System.Management.Automation.PSCredential[]
System.Int32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Unregister-HPEiLORemoteSupportSetting]()

[Set-HPEiLORemoteSupportSetting]()

[Get-HPEiLORemoteSupportSetting]()

