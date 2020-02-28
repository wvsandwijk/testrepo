---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Restore-HPEiLOSetting

## SYNOPSIS
Restores the iLO setting from .bak file.

## SYNTAX

### LocalLocation (Default)
```
Restore-HPEiLOSetting [-Connection] <Connection[]> [-BackupFileLocation] <String[]>
 [-BackupFilePassword <String[]>] [-UploadTimeout <UInt32[]>] [-OutputType <String>] [-Force] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### NANDLocation
```
Restore-HPEiLOSetting [-Connection] <Connection[]> [-RestoreFromNAND] [-OutputType <String>] [-Force] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Restore-HPEiLOSetting cmdlet restores the iLO setting from .bak file.
This cmdlet is supported on iLO 5 servers only.
The iLO configuration includes many categories such as power, network, security, the User Database, and license keys.
Most of the configuration information is stored in the battery-powered SRAM memory device, and it can be backed up and restored.
WARNING: All active connections are lost, post successful execution of the cmdlet.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Restore-HPEiLOSetting -BackupFileLocation C:\Users\admin\test.bak -BackupFilePassword admin123 -UploadTimeout 100
```

This cmdlet restores the iLO setting in iLO 5, when the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Restore-HPEiLOSetting -RestoreFromNAND
```

This cmdlet restores the iLO setting in iLO 5, when the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123

PS C:\> Restore-HPEiLOSetting -Connection $connection -BackupFileLocation C:\Users\admin\test.bak -BackupFilePassword admin123
```

This cmdlet restores the iLO setting in iLO 5, when array of connection objects is passed as named parameter.

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
The file location of backup file which will be uploaded to the iLO.
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
BackupFilePassword to be provided if the backup file was created with a backupfilePassword.
BackupFilePassword cannot be null or empty string.
Restoring the .bak file that is password protected will result in exception if the password is not supplied.

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

### -UploadTimeout
The timeout value for uploading the firmware file.
The default timeout value is 180 seconds.

```yaml
Type: UInt32[]
Parameter Sets: LocalLocation
Aliases:

Required: False
Position: Named
Default value: 180
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
Setting this will cause an error prompt for any required parameter that is missing.

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

### -RestoreFromNAND
This parameter restores the iLO settings from NAND.

```yaml
Type: SwitchParameter
Parameter Sets: NANDLocation
Aliases:

Required: True
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
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
.
When you configure the FIPS and CNSA security states, iLO is reset to the factory default settings.
If you do not configure these security states before performing a restore, the restored information is deleted when you update the security state.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Backup-HPEiLOSetting]()

