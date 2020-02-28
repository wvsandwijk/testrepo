---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Disable-HPEiLOMCTP

## SYNOPSIS
Disables the MCTP recovery setting.

## SYNTAX

```
Disable-HPEiLOMCTP [-Connection] <Connection[]> [-OutputType <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Disable-HPEiLOMCTP cmdlet disables the MCTP recovery setting.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Disable-HPEiLOMCTP -Confirm:$true
```

This cmdlet disables the MCTP setting on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123

PS C:\> Disable-HPEiLOMCTP -Connection $connection -Confirm:$true
```

This cmdlet disables the MCTP setting in iLO 5, in which, the array of connection objects is passed as named parameter.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
Additional Parameters

-Confirm \[\<SwitchParameter\>\]
    Prompts you for confirmation before running the cmdlet.
    Required? 
false
    Position? 
named
    Default value                False
    Accept pipeline input? 
False
    Accept wildcard characters? 
false

-WhatIf \[\<SwitchParameter\>\]
    Shows what would happen if the cmdlet runs.
The cmdlet is not run.
    Required? 
false
    Position? 
named
    Default value                False
    Accept pipeline input? 
False
    Accept wildcard characters? 
false

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Enable-HPEiLOMCTP]()

[Get-HPEiLODeviceInventory]()

