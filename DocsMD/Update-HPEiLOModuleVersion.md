---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Update-HPEiLOModuleVersion

## SYNOPSIS
Checks to determine if a newer version of the HPEiLO Cmdlets is available on the HPE website for download.

## SYNTAX

```
Update-HPEiLOModuleVersion [<CommonParameters>]
```

## DESCRIPTION
Update-HPEiLOModuleVersion command checks to determine if a newer version of the HPEiLOCmdlets is available on the HPE website for download.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Update-HPEiLOModuleVersion

The currently installed version 2.0.0.0 is the most current.
```

This cmdlet shows that the currently installed version is the most current.

### EXAMPLE 2
```
PS C:\> Update-HPEiLOModuleVersion

There is a newer version of HPEiLOCmdlets available at http://www.hpe.com/servers/powershell .Do you want to go there to download the new version?(Y/N): Y
```

This command shows that a newer version of cmdlets is available on the HPE website for download.
Press Y to open the website with default browser.

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

[Get-HPEiLOModuleVersion]()

