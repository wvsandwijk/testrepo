---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Update-HPEiLOFirmware

## SYNOPSIS
Updates the specified firmware image to iLO and starts the update process.

## SYNTAX

```
Update-HPEiLOFirmware [-Connection] <Connection[]> -Location <String[]> [-TPMEnabled] [-UpdateRepository]
 [-UploadTimeout <UInt32[]>] [-OutputType <String>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Update-HPEiLOFirmware cmdlet copies the specified firmware image to iLO and starts the update process.
The types of firmware that can be uploaded are:
• iLO (.bin)
• ROM firmware (.full or .flash)
• CPLD (.vme)
• Power PIC (.hex)

You must have the Configure iLO Settings privilege to execute this cmdlet for iLO firmware upgrade.
When you execute the command to update the firmware, the command verifies the TPM configuration status of option ROM measuring.
If it is enabled, the cmdlet returns the same warning message as stated in the web interface.
To enable the firmware update to continue, you must execute the command with the TPMEnabled parameter.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Update-HPEiLOFirmware -Location "C:\Users\admin\Desktop\Firmware\ilo4_253.bin" -UploadTimeout 700
```

This cmdlet updates the iLO firmware of the iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Update-HPEiLOFirmware -Location "C:\Users\admin\Desktop\Firmware\ilo4_253.bin" -TPMEnabled -UploadTimeout 700
```

This cmdlet updates the iLO firmware of the iLO 4 or iLO 5, in which the TPMEnabled switch is enabled and the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> Update-HPEiLOFirmware -Connection $connection -Location "C:\Users\admin\Desktop\Firmware\P89_2.42_04_25_2017.signed.full" -UploadTimeout 700 -TPMEnabled -UpdateRepository
```

This cmdlet updates the firmware of iLO 5, in which the connection object is passed as named parameter.

### EXAMPLE 4
```
PS C:\ > $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Update-HPEiLOFirmware -Connection $connection -Location "C:\Users\admin\Desktop\Firmware\ilo4_253.bin" -UploadTimeout 700
```

This cmdlet updates the iLO firmware of iLO 4 and iLO 5, in which an array of connection objects is passed as named parameter.

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

### -Location
Specifies the full path of the firmware upgrade file.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TPMEnabled
SwitchParameter to continue the firmware update, when TPM (ROM measuring) switch is enabled.

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

### -UpdateRepository
If set to true, the firmware file is added to the iLO repository.
This parameter is supported only on iLO 5 server.

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

### -UploadTimeout
The timeout value for uploading the firmware file.
In case of Gen8/Gen9 servers, the default timeout value is 600 seconds.
In case of Gen10 servers, the default timeout value is 180 seconds.

```yaml
Type: UInt32[]
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
WARNING - Updating the iLO firmware will cause the iLO to reboot.
This will terminate any connections to the iLO including Remote Console and Virtual Media. 
Updating other types of firmware might not cause iLO to reboot, but might require a server reboot. 
The server will not reboot automatically.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOFirmwareInventory]()

