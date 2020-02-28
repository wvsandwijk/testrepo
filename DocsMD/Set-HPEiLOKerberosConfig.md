---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOKerberosConfig

## SYNOPSIS
Configures the Kerberos authentication.

## SYNTAX

```
Set-HPEiLOKerberosConfig [-Connection] <Connection[]> [-KerberosEnabled <String[]>] [-Realm <String[]>]
 [-KDCAddress <String[]>] [-KDCPort <UInt16[]>] [-Keytab <String[]>] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOKerberosConfig cmdlet modifies the directory settings related to kerberos configuration in iLO.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $keyTab =@
 "-----BEGIN KEYTAB-----
abcdBase64encodedText
-----END KEYTAB-----"

PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOKerberosConfig -KerberosEnabled Yes -Realm ABCD.COM -KDCAddress 2.2.2.2 -KDCPort 65 -KeyTab $keyTab
```

This cmdlet sets the Kerberos configuration in iLO 4 server, in which the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $keyTab =@
 "-----BEGIN KEYTAB-----
abcdBase64encodedText
-----END KEYTAB-----"

PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> Set-HPEiLOKerberosConfig -Connection $connection -KerberosEnabled Yes -Realm ABCD.COM -KDCAddress 2.2.2.2 -KDCPort 65 -KeyTab $keyTab
```

This cmdlet sets the KeberosConfig setting in iLO 4, and array of connection objects is passed as named parameter.

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

### -KerberosEnabled
Enables or disables Kerberos authentication.
Supported values are Yes to enable Kerberos authentication and No to disable Kerberos authentication.

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

### -Realm
Specifies the Kerberos realm for which the domain controller is configured.
By convention, the Kerberos realm name for a given domain is the domain name converted to uppercase.

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

### -KDCAddress
Specifies the location of the domain controller.
The domain controller location is specified as an IP address or DNS name.

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

### -KDCPort
Specifies the port number used to connect to the domain controller.
The Kerberos port number is 88, but the domain controller can be configured for a different port number.

```yaml
Type: UInt16[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Keytab
Specifies the contents of the keytab file which is a binary file containing pairs of principals and encrypted passwords.
In the Windows environment, the keytab file is generated with a ktpass utility.
After generating a binary keytab file using the appropriate utility, use a Base64 encoder to convert the binary file to ASCII format.
Place the Base64 contents between: -----BEGIN KEYTAB----- and -----END KEYTAB-----.

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
System.UInt16[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOKerberosConfig]()

