---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Update-HPiLOModuleVersion

## SYNOPSIS
Checks to determine if a newer version of the HPiLOCmdlets is available on the HP website for download.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Update-HPiLOModuleVersion [<CommonParameters>]
```

## DESCRIPTION
Update-HPiLOModuleVersion command checks to determine if a newer version of the HPiLOCmdlets is available on the HP website for download.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Update-HPiLOModuleVersion

There is a newer version of HPiLOCmdlets available at http://www.hp.com/go/powershell.
Do you want to go there to download the new version?(Y/N): Y
```

This command shows that a newer version of cmdlets is available on HP website for download.
Input Y to open the website with default browser.

### EXAMPLE 2
```
PS C:\> Update-HPiLOModuleVersion

The currently installed version 1.1.0.0 is the most current.
```

This command shows that the currently installed version is the most current.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### 
A string indicates whether a newer version of the cmdlets is available on the HP website for download.

## NOTES

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)

