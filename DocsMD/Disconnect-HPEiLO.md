---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Disconnect-HPEiLO

## SYNOPSIS
The Disconnect-HPEiLO cmdlet closes the connection.

## SYNTAX

```
Disconnect-HPEiLO [-Connection] <Connection[]> [<CommonParameters>]
```

## DESCRIPTION
The Disconnect-HPEiLO cmdlet closes the connection and cleans up the connection object.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Disconnect-HPEiLO $connection
```

$connection is the connection object or an array of iLO connection objects passed as the positional parameter to the cmdlet that has to be disconnected.

### EXAMPLE 2
```
C:\PS> ,$connection | Disconnect-HPEiLO
```

$connection is the connection object or an array of iLO connection objects passed as pipeline input to the cmdlet that has to be disconnected.

## PARAMETERS

### -Connection
@{Text=}

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Test-HPEiLOConnection]()

