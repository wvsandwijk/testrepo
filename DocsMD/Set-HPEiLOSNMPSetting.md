---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNMPSetting

## SYNOPSIS
Sets the SNMP setting

## SYNTAX

```
Set-HPEiLOSNMPSetting [-Connection] <Connection[]> [-SNMPConnectedVia <String[]>] [-SystemLocation <String[]>]
 [-SystemContact <String[]>] [-SystemRole <String[]>] [-SystemRoleDetail <String[]>]
 [-ReadCommunity1 <String[]>] [-ReadCommunity2 <String[]>] [-ReadCommunity3 <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSNMPSetting sets the SNMP setting

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPSetting -SNMPConnectedVia AgentlessManagement -SystemLocation 1.1.1.1 -SystemContact admin -SystemRole LabAdmin -SystemRoleDetail testsnmp
```

This cmdlet sets the SNMP setting on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPSetting -ReadCommunity1 3.3.3.3 -ReadCommunity2 1.1.1.1 -ReadCommunity3 2.2.2.2
```

This cmdlet sets the SNMP setting on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOSNMPSetting -Connection $connection -SystemLocation 1.1.1.1 -SystemContact admin -SystemRole LabAdmin -SystemRoleDetail testsnmp
```

This cmdlet sets the SNMP setting on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -SNMPConnectedVia
Specifies the SNMP connection to the iLO.
Supported values are AgentlessManagement, SNMPPass-Through.
SNMPConnectedVia must be set to AgentlessManagement in order to set SystemLocation, SystemContact, SystemRole, SystemRoleDetail, ReadCommunity1, ReadCommunity2 and ReadCommunity3.
This parameter is supported only on iLO 4 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: AgentlessManagement, SNMPPass-Through

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SystemLocation
The string of up to 49 characters that specifies the physical location of the server.

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

### -SystemContact
The string of up to 49 characters that specifies the system administrator or server owner.
The string can include a name, email address, or phone number.

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

### -SystemRole
The string of up to 64 characters that describes the server role or function.

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

### -SystemRoleDetail
The string of up to 512 characters that describes specific tasks that the server might perform.

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

### -ReadCommunity1
Configures the SNMP read-only community 1 string.
Values can include a community string, optionally followed by an IP address or FQDN.
A string of up to 49 characters is allowed.

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

### -ReadCommunity2
Configures the SNMP read-only community 2 string.
Values can include a community string, optionally followed by an IP address or FQDN.
A string of up to 49 characters is allowed.

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

### -ReadCommunity3
Configures the SNMP read-only community 3 string.
Values can include a community string, optionally followed by an IP address or FQDN.
A string of up to 49 characters is allowed.

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
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOSNMPSetting]()

