---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOInstallationQueueWaitTask

## SYNOPSIS
Adds a wait time task to the installation queue.

## SYNTAX

```
Add-HPEiLOInstallationQueueWaitTask [-Connection] <Connection[]> -TaskName <String[]> [-Expire <DateTime[]>]
 [-StartAfter <DateTime[]>] -UpdatableBy <String[][]> -WaitTimeSeconds <UInt32[]> [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOInstallationQueueWaitTask cmdlet adds a wait time task to the installation queue.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $update = ,@("Uefi","RuntimeAgent")

PS C:\> ,$connection | Add-HPEiLOInstallationQueueWaitTask -TaskName WaitTime -UpdatableBy $update -WaitTimeSeconds 10
```

This command adds the wait task in the installaton queue to the iLO 5 when a connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> $update = ,@("Uefi","RuntimeAgent")

PS C:\> Add-HPEiLOInstallationQueueWaitTask -Connection $connection -TaskName WaitTime -UpdatableBy $update -WaitTimeSeconds 10 -Expire "2017-03-01 02:43:01" -StartAfter "2017-01-01 02:43:01"
```

This cmdlet adds the wait task to the installation queue on iLO 5 with an array of connection objects passed as named parameter.

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

### -Expire
The task expiration date and time.
The task automatically expires after this time.
iLO automatically changes the state to Expired for such tasks.
Supported format is yyyy-MM-dd HH:mm:ss.
(For example 2018-06-27 19:23:14).
Time must be given in 24 hour format.

```yaml
Type: DateTime[]
Parameter Sets: (All)
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
(For example, 2018-06-27 12:23:14)

```yaml
Type: DateTime[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UpdatableBy
This is an unordered set of permitted updaters that can execute the task from the installation queue.

Supported values are:
• Bmc: This component may be scheduled for update by iLO.
• RuntimeAgent: This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.
• Uefi: This component may be scheduled for update by UEFI BIOS.

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
The number of seconds to pause.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: True
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
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLORepositoryComponent]()

[Invoke-HPEiLOInstallSet]()

[Get-HPEiLOInstallationTaskQueue]()

