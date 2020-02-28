---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Invoke-HPEiLORepositoryComponent

## SYNOPSIS
Invokes the repository component and adds it to the installation queue.

## SYNTAX

### MaintenanceWindowSet
```
Invoke-HPEiLORepositoryComponent [-Connection] <Connection[]> -TaskName <String[]> -Filename <String[]>
 [-MaintenanceWindow <String[]>] -Command <String[]> [-UpdateRecoverySet <String[]>] -UpdatableBy <String[][]>
 [-TPMOverride] [-OutputType <String>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### NonMaintenanceWindowSet
```
Invoke-HPEiLORepositoryComponent [-Connection] <Connection[]> -TaskName <String[]> -Filename <String[]>
 [-Expire <DateTime[]>] [-StartAfter <DateTime[]>] -Command <String[]> [-UpdateRecoverySet <String[]>]
 -UpdatableBy <String[][]> [-TPMOverride] [-OutputType <String>] [-Force] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Invoke-HPEiLORepositoryComponent cmdlet Invokes the repository component and adds it to the installation queue.This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Invoke-HPEiLORepositoryComponent -TaskName "abcd" -Filename "ilo5_120_p27.bin" -Command ApplyUpdate -UpdatableBy Bmc -TPMOverride -Expire "2017-03-01 02:43:01" -StartAfter "2017-01-01 02:43:01"
```

This example shows the output of the cmdlet in iLO 5, when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Invoke-HPEiLORepositoryComponent -Connection $connection -TaskName "abcd" -Filename "ilo5_120_p27.bin" -Command ApplyUpdate -UpdateRecoverySet No -UpdatableBy Bmc
```

This example shows the output of iLO 5, with an array of iLO connection objects passed as named parameter.

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

### -TaskName
User defined name of the task.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filename
The unique filename of the component.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaintenanceWindow
Specifies the name of the maintenance window.
It is the configured time period that applies to an installation task.

Note: Maintenance Window can be added or modified using the cmdlets Add-HPEiLOMaintenanceWindow and Set-HPEiLOMaintenanceWindow.

```yaml
Type: String[]
Parameter Sets: MaintenanceWindowSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Command
Command to execute.
Supported values are "ApplyUpdate", "ResetServer", and "ResetBmc".
- ApplyUpdate: Apply an update using the specified component.
- ResetBmc: Reset the BMC.
- ResetServer: Reset the server.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: ApplyUpdate, ResetServer, ResetBmc

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateRecoverySet
If set to Yes, the components in the flash operations are used to replace matching contents in the Recovery Set.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatableBy
This is an unordered set of permitted updaters that can execute this item.
Supported values are:
- Bmc: This component may be scheduled for update by iLO.
- RuntimeAgent: This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.
- Uefi: This component may be scheduled for update by UEFI BIOS.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TPMOverride
If set to true, the TPMOverrideFlag is passed in on the associated flash operations.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
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
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### -Expire
The task expiration date and time.
Supported format is yyyy-MM-dd HH:mm:ss.
(For example, 2018-06-27 19:23:14).
Time must be given in 24-hour format.

```yaml
Type: DateTime[]
Parameter Sets: NonMaintenanceWindowSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StartAfter
The task start date and time.
Supported format is yyyy-MM-dd HH:mm:ss.
(For example, 2018-06-27 19:23:14).
Time must be given in 24-hour format.

```yaml
Type: DateTime[]
Parameter Sets: NonMaintenanceWindowSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
## OUTPUTS

### None
If the example executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLORepositoryComponent]()

[Add-HPEiLORepositoryComponent]()

[Remove-HPEiLORepositoryComponent]()

[Clear-HPEiLOUnlockedRepositoryComponent]()

[Add-HPEiLOMaintenanceWindow]()

[Set-HPEiLOMaintenanceWindow]()

[Disconnect-HPEiLO]()

