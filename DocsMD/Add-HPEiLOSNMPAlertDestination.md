---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOSNMPAlertDestination

## SYNOPSIS
Adds the respective iLO SNMP Alert Destination.

## SYNTAX

```
Add-HPEiLOSNMPAlertDestination [-Connection] <Connection[]> -AlertDestination <String[]>
 [-AlertProtocol <String[]>] [-TrapCommunity <String[]>] [-SNMPv3User <String[]>] [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOSNMPAlertDestination cmdlet adds the respective iLO SNMP Alert Destination.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOSNMPAlertDestination -AlertDestination 1.1.1.1 -AlertProtocol SNMPv3trap -TrapCommunity 2.2.2.2 -SNMPv3User admin123
```

This cmdlet adds the SNMP alert destination.
The connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Add-HPEiLOSNMPAlertDestination -Connection $connection -AlertDestination 1.1.1.1 -AlertProtocol SNMPv1trap -TrapCommunity 2.2.2.2
```

This cmdlet adds the SNMP alert destination to the iLO.
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

### -AlertDestination
The IP address or FQDN of the remote management system that receive SNMP alerts.

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

### -AlertProtocol
Indicates the SNMP protocol associated with the AlertDestination.
The supported values are SNMPv1trap, SNMPv3trap, and SNMPv3Inform.

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

### -SNMPv3User
Provides the SNMPv3 security name associated with SNMPv3trap or SNMPv3Inform set on SNMPAlertProtocol.

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

[Set-HPEiLOSNMPAlertDestination]()

[Get-HPEiLOSNMPAlertDestination]()

[Remove-HPEiLOSNMPAlertDestination]()

