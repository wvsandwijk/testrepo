---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOSNMPv3User

## SYNOPSIS
Adds SNMPv3User in the iLO.

## SYNTAX

```
Add-HPEiLOSNMPv3User [-Connection] <Connection[]> -SecurityName <String[]> -AuthenticationProtocol <String[]>
 -AuthenticationPassphrase <String[]> -PrivacyProtocol <String[]> -PrivacyPassphrase <String[]>
 [-UserEngineID <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOSNMPv3User cmdlet adds SNMPv3User in the iLO.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOSNMPv3User -SecurityName admin123 -AuthenticationProtocol MD5 -AuthenticationPassphrase abcde1234 -PrivacyProtocol AES -PrivacyPassphrase 123456adb -UserEngineID 0x01020304abcdef
```

This cmdlet adds SNMPv3User.
The connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Add-HPEiLOSNMPv3User -Connection $connection -SecurityName admin123 -AuthenticationProtocol SHA -AuthenticationPassphrase abcde1234 -PrivacyProtocol DES -PrivacyPassphrase 123456adb -UserEngineID 0x01020304abcdef
```

This cmdlet adds SNMPv3User to the iLO.
The array of connection objects is passed as named parameter.

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

### -SecurityName
SNMPv3 User associated with the destination when SNMP alert protocol is SNMPv3trap.
The maximum allowable length is 32.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthenticationProtocol
Sets the message digest algorithm to use for encoding the authorization passphrase.
The message digest is calculated over an appropriate portion of an SNMP message, and is included as a part of the message sent to the recipient.
The supported values are MD5, SHA, and SHA256.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: MD5, SHA, SHA256

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthenticationPassphrase
Sets the passphrase to use for sign operations.
Enter a value between 8 and 49 characters.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrivacyProtocol
Sets the encryption algorithm to use for encoding the privacy passphrase.
A portion of an SNMP message is encrypted before transmission.
The supported values are DES and AES.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: DES, AES

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrivacyPassphrase
Sets the passphrase to use for encrypt operations.
Enter a value between 8 and 49 characters.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserEngineID
The UserEngineID is combined with the SecurityName to create an SNMPv3 user for each manager.
It is only used for creating remote accounts used with INFORM messages.
If this property is not set, then the INFORM message will be sent by default or by the iLO configured engine ID.
This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).

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
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOSNMPv3User]()

[Get-HPEiLOSNMPv3User]()

[Remove-HPEiLOSNMPv3User]()

