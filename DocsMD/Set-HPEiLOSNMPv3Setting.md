---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNMPv3Setting

## SYNOPSIS
Sets the SNMPv3 setting

## SYNTAX

```
Set-HPEiLOSNMPv3Setting [-Connection] <Connection[]> [-SNMPv3EngineID <String[]>]
 [-SNMPv3InformRetryAttempt <Int32[]>] [-SNMPv3InformRetryIntervalSeconds <Int32[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSNMPv3Setting cmdlet sets the SNMPv3 setting.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPv3Setting -SNMPv3EngineID 0x01020304abcdef
```

This cmdlet sets the SNMPv3setting on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPv3Setting -SNMPv3EngineID 0x01020304abcdef -SNMPv3InformRetryAttempt 5 -SNMPv3InformRetryIntervalSeconds 100
```

This cmdlet sets the SNMPv3setting on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOSNMPv3Setting -Connection $connection -SNMPv3EngineID 0x01020304abcdef
```

This cmdlet sets the SNMPv3setting on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -SNMPv3EngineID
The SNMPv3 Engine ID is the unique identifier of an SNMP engine that belongs to an SNMP agent entity.
This value must be a hexadecimal string with an even number of 6 to 32 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).

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

### -SNMPv3InformRetryAttempt
Specifies the number of retries to be used in SNMPv3 inform.
Supported values are 0-5.
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

### -SNMPv3InformRetryIntervalSeconds
Specifies the interval in seconds between SNMPv3 inform retries.
Supported values are 5-120.
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
System.Int32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOSNMPv3Setting]()

