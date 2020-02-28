---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOInstallSet

## SYNOPSIS
Adds a new install set.

## SYNTAX

```
Add-HPEiLOInstallSet [-Connection] <Connection[]> -Name <String> [-Description <String>]
 [-IsRecoverySet <String>] -Command <String[]> [-Filename <String[]>] -ComponentName <String[]>
 -UpdatableBy <String[][]> [-WaitTimeSeconds <UInt32[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOInstallSet cmdlet adds a new install set to the iLO.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> [string[][]]$update = ,@("Bmc"),@("Uefi","RuntimeAgent")

PS C:\> ,$connection | Add-HPEiLOInstallSet -Name TestInstallSet -Description NewInstallSet -IsRecoverySet Yes -Command Wait,ApplyUpdate -Filename " ","cp031578.exe" -ComponentName Component1,Component2 -UpdatableBy $update -WaitTimeSeconds 10,0
```

This command adds the install set to iLO 5 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> PS C:\> [string[][]]$update = ,@("Bmc"),@("Uefi")

PS C:\> ,$connection | Add-HPEiLOInstallSet -Name TestInstallSet -Description NewInstallSet -IsRecoverySet Yes -Command ResetServer,ApplyUpdate -Filename "ilo5_120.bin","cp031578.exe" -ComponentName Component1,Component2 -UpdatableBy $update
```

This cmdlet adds the install set on iLO 5 with an array of connection objects passed as named parameter.

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

### -Name
Name of the install set (client supplied upon creation).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of the install set (client supplied upon creation).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsRecoverySet
If set to Yes, this install set is reserved to hold only critical firmware recovery updatable by iLO.
Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Command
Command to execute.
Supported values are "ApplyUpdate", "ResetServer", "ResetBmc", "Wait".
ApplyUpdate : Apply an update using the specified component.
ResetBmc : Reset the BMC.
ResetServer : Reset the server.
Wait : Wait for the WaitTimeSeconds number of seconds

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: ApplyUpdate, ResetServer, ResetBmc, Wait

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filename
The unique filename of the component.
This correlates to 'Filename' in the HpeComponent.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComponentName
Name of the component.

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

### -UpdatableBy
This is an unordered set of permitted updaters that can execute this item.
Supported values are:
Bmc: This component may be scheduled for an update by iLO.
RuntimeAgent: This component may be scheduled for an update by a runtime update agent such as Smart Update Manager or Smart Update Tool.
Uefi: This component may be scheduled for an update by UEFI BIOS.

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

### -WaitTimeSeconds
The number of seconds to pause if the command is 'Wait'; ignored otherwise.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLOInstallSet]()

[Get-HPEiLOInstallSet]()

[Remove-HPEiLOInstallSet]()

[Clear-HPEiLOInstallSet]()

