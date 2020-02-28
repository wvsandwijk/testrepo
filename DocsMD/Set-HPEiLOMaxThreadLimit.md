---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOMaxThreadLimit

## SYNOPSIS
Sets the maximum number of threads that can be spawned by the cmdlets of HPEiLOCmdlets module.

## SYNTAX

```
Set-HPEiLOMaxThreadLimit [-MaxThreadLimit] <Int32> [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOMaxThreadLimit cmdlet sets the upper limit to the maximum number of parallel threads that can be created by the cmdlet of this module.
Parallel threads are created when a cmdlet intents to fetch information from multiple targets.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPEiLOMaxThreadLimit -MaxThreadLimit 300
```

### EXAMPLE 2
```
PS C:\> 120 | Set-HPEiLOMaxThreadLimit
```

## PARAMETERS

### -MaxThreadLimit
@{Text=}

```yaml
Type: Int32
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

### System.Int32
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOMaxThreadLimit]()

