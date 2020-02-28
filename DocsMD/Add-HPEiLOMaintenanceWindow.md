---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOMaintenanceWindow

## SYNOPSIS
Adds the maintenance window.

## SYNTAX

```
Add-HPEiLOMaintenanceWindow [-Connection] <Connection[]> -Expire <DateTime[]> -StartAfter <DateTime[]>
 -Name <String> [-Description <String>] [-OutputType <String>] [-Force] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOMaintenanceWindow cmdlet adds the maintenance window.
A maintenance window is a configured time period that applies to an installation task.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Add-HPEiLOMaintenanceWindow -Expire "2018-09-29 03:15" -StartAfter "2018-09-28 19:00" -Name TestMaint -Description "test maintenance window"
```

This cmdlet adds the maintenance window to iLO 5 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> [DateTime]$startTime = Get-Date

PS C:\> [DateTime]$endTime = (Get-Date).AddDays(2)

PS C:\> ,$connection | Add-HPEiLOMaintenanceWindow -Expire $endTime -StartAfter $startTime -Name TestMaint -Description "test maintenance window"
```

This cmdlet adds the maintenance window on iLO 5 with an array of connection objects passed as pipeline input.

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

### -Expire
The maintenance window end time (UTC).
Supported format is of the form yyyy-MM-dd HH:mm:ss.
(For example, 2018-06-27 19:23:14).
Time must be given in 24-hour format.

```yaml
Type: DateTime[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StartAfter
The maintenance window start time (UTC).
Supported format is of the form yyyy-MM-dd HH:mm:ss.
(For example, 2018-06-27 19:23:14).
Time must be given in 24-hour format.

```yaml
Type: DateTime[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the user-defined name for the maintenance window.
Accepts a string of length between 1 to 64.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Description
A description of the maintenance window.
Accepts a string of length between 0 to 64.

```yaml
Type: String
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
Default value: None
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
Default value: None
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
System.DateTime[]
## OUTPUTS

### None
## NOTES
Maintenance windows are automatically deleted 24 hours after they expire.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOMaintenanceWindow]()

[Set-HPEiLOMaintenanceWindow]()

[Clear-HPEiLOMaintenanceWindow]()

[Remove-HPEiLOMaintenanceWindow]()

