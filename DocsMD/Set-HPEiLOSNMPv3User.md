---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNMPv3User

## SYNOPSIS
Sets the SNMPv3User details.

## SYNTAX

```
Set-HPEiLOSNMPv3User [-Connection] <Connection[]> -ID <UInt32[]> [-SecurityName <String[]>]
 [-AuthenticationProtocol <String[]>] [-AuthenticationPassphrase <String[]>] [-PrivacyProtocol <String[]>]
 [-PrivacyPassphrase <String[]>] [-UserEngineID <String[]>] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSNMPv3User cmdlet sets the SNPv3User details

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPv3User -ID 2 -SecurityName admin -AuthenticationProtocol MD5 -AuthenticationPassphrase admin123 -PrivacyProtocol AES -PrivacyPassphrase admin123
```

This cmdlet sets the SNMPv3User on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPv3User -ID 2 -SecurityName testsnmp -UserEngineID 0x01020304abcdef -AuthenticationProtocol MD5 -AuthenticationPassphrase admin123 -PrivacyProtocol AES -PrivacyPassphrase admin123
```

This cmdlet sets the SNMPv3User on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOSNMPv3User -Connection $connection -ID 2 -SecurityName admin -AuthenticationProtocol MD5 -AuthenticationPassphrase admin123 -PrivacyProtocol AES -PrivacyPassphrase admin123
```

This cmdlet sets the SNMPv3User on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -ID
The unique identifier ID for each Alert destination.
The supported values for iLO 4 are 1,2,3.
The supported values for iLO 5 are 1-8.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SecurityName
Provides the SNMPv3 security name associated with SNMPv3trap or SNMPv3Inform set on SNMPAlertProtocol.
This parameter is supported only on iLO 5 server.
The maximum allowable length is 32.

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

### -AuthenticationProtocol
Sets the message digest algorithm to use for encoding the authorization passphrase.
The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient.
Supported values are MD5 and SHA.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: MD5, SHA, SHA256

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthenticationPassphrase
Sets the passphrase to use for sign operations.
Enter a value of 8 to 49 characters.

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

### -PrivacyProtocol
Sets the encryption algorithm to use for encoding the privacy passphrase.
A portion of an SNMP message is encrypted before transmission.
Supported values are AES and DES.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: DES, AES

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrivacyPassphrase
Sets the passphrase to use for encrypt operations.
Enter a value between 8 to 49 characters.

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

### -UserEngineID
The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager.
It is only used for creating remote accounts used with INFORM messages.
If this property is not set then INFORM message will be sent with default or iLO configured engine ID.
This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).
Supported only on iLO 5 servers.

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
System.Int32[]
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOSNMPv3User]()

[Add-HPEiLOSNMPv3User]()

[Remove-HPEiLOSNMPv3User]()

