---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOMaxThreadLimit

## SYNOPSIS
Gets the maximum number of threads that can be spawned by the cmdlets of the HPEiLOCmdlets module.

## SYNTAX

```
Get-HPEiLOMaxThreadLimit [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOMaxThreadLimit cmdlet returns the maximum number of parallel threads that will be created by the cmdlet of this module.
Parallel threads are created when a cmdlet intents to fetch information from multiple targets.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Get-HPEiLOMaxThreadLimit
256
```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOMaxThreadLimit]()

