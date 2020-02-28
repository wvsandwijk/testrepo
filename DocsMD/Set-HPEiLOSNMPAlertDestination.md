---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNMPAlertDestination

## SYNOPSIS
Modifies the SNMP alert destination.

## SYNTAX

```
Set-HPEiLOSNMPAlertDestination [-Connection] <Connection[]> -ID <UInt32[]> [-AlertDestination <String[]>]
 [-AlertProtocol <String[]>] [-TrapCommunity <String[]>] [-TrapCommunityVersion <String[]>]
 [-SNMPv3User <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSNMPAlertDestination cmdlet modifies the SNMP alert destination.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPAlertDestination -ID 2 -AlertDestination 2.2.2.2 -TrapCommunity 1.1.1.1 -TrapCommunityVersion v1
```

This cmdlet sets the SNMP alert destination on iLO 4 with connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPAlertDestination -ID 2 -AlertDestination 2.2.2.2 -AlertProtocol SNMPv3trap -TrapCommunity 1.1.1.1  -SNMPv3User admin
```

This cmdlet sets the SNMP alert destination on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOSNMPAlertDestination -Connection $connection -ID 2 -AlertDestination 2.2.2.2 -TrapCommunity 1.1.1.1
```

This cmdlet sets the SNMP alert destination on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -AlertDestination
The IP address or FQDN of remote management system that receive SNMP alerts.

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

### -AlertProtocol
Indicates the SNMP protocol associated with the AlertDestination.
Supported values are SNMPv1trap, SNMPv3trap, and SNMPv3Inform.
This parameter is supported only on iLO 5 server.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: SNMPv1Trap, SNMPv3Trap, SNMPv3Inform

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TrapCommunity
The configured SNMPv1 trap community string.

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

### -TrapCommunityVersion
The trap community version for the trap community mentioned.
This cmdlet is supported only on iLO 4 server.

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

### -SNMPv3User
Provides the SNMPv3 security name associated with SNMPv3trap or SNMPv3Inform set on SNMPAlertProtocol.
This parameter is supported only on iLO 5 server.

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

[Get-HPEiLOSNMPAlertDestination]()

[Add-HPEiLOSNMPAlertDestination]()

[Remove-HPEiLOSNMPAlertDestination]()

