---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Clear-HPEiLOLog

## SYNOPSIS
Clears all the logs created by the HPE iLO module.

## SYNTAX

```
Clear-HPEiLOLog [[-Last] <UInt32>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet gives you the choice to clear either one or multiple logs using the -Last parameter.
If you do not use any parameter, then it will clear all the existing logs including the current log (confirmation is asked before clearing all the logs).

## EXAMPLES

### EXAMPLE 1
```
C:\PS> Clear-HPEiLOLog
```

## PARAMETERS

### -Last
It takes integer as value.
If X value is specified, then X number of logs in the descending order of their age or the older logs will be cleared.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
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
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.UInt32
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

[Disable-HPEiLOLog]()

[Enable-HPEiLOLog]()

[http://www.hpe.com/servers/powershell]()

