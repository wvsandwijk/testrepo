---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Backup-HPEiLOSetting

## SYNOPSIS
Backs up current iLO setting in a .bak file.

## SYNTAX

### LocalLocation (Default)
```
Backup-HPEiLOSetting [-Connection] <Connection[]> [-BackupFileLocation] <String[]>
 [-BackupFilePassword <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

### NANDLocation
```
Backup-HPEiLOSetting [-Connection] <Connection[]> [-BackupOnNAND] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The cmdlet backs up current iLO setting in a .bak file.
This cmdlet is supported only on iLO 5 servers.

NOTE: As with any computer system, backing up your data is a recommended practice to minimize the impact from failures.
Hewlett Packard Enterprise recommends performing a backup each time before you update the iLO firmware.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Backup-HPEiLOSetting -BackupFileLocation C:\Users\admin\test.bak -BackupFilePassword backup@1234
```

The cmdlet shows the output on iLO 5 with connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Backup-HPEiLOSetting -BackupOnNAND
```

The cmdlet shows the output on iLO 5 with connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Backup-HPEiLOSetting -Connection $connection -BackupFileLocation C:\Users\admin\test.bak
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and username and password provided to log in to the iLO.

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

### -BackupFileLocation
The file location where backup file gets created.
The supported file extension is .bak.
For example - C:\Users\admin\testBackupFile.bak

```yaml
Type: String[]
Parameter Sets: LocalLocation
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BackupFilePassword
BackupFilePassword to add to the file while creating the backup file.
BackupFilePassword cannot be null or empty string.

```yaml
Type: String[]
Parameter Sets: LocalLocation
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
Accepted values: Object, RawRequest

Required: False
Position: Named
Default value: Object
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this parameter will cause an error prompt for any required parameter that is missing.

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

### -BackupOnNAND
This parameter does the backup of iLO settings on NAND.

```yaml
Type: SwitchParameter
Parameter Sets: NANDLocation
Aliases:

Required: True
Position: Named
Default value: None
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
The user must have administrative rights to create the file specified in the BackupFileLocation parameter.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Restore-HPEiLOSetting]()

