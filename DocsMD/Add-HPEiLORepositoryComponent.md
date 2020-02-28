---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLORepositoryComponent

## SYNOPSIS
Adds the repository component to the iLO repository

## SYNTAX

```
Add-HPEiLORepositoryComponent [-Connection] <Connection[]> -Location <String[]> [-CompSigLocation <String[][]>]
 [-TPMEnabled] [-UpdateTarget] [-UpdateRecoverySet <String[]>] [-UploadTimeout <UInt32[]>]
 [-OutputType <String>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLORepositoryComponent cmdlet adds the repository component to the iLO repository.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Add-HPEiLORepositoryComponent -Location "C:\iLOFirmware\ilo4_255.bin" -UploadTimeout 700 -TPMEnabled -UpdateTarget
```

This cmdlet adds the repository component to iLO 5 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $file = ,@("C:\iLO\iLOFirmwares\ComponentFile\3414\cp034141_part1.compsig","C:\iLO\iLOFirmwares\ComponentFile\3414\cp034141_part2.compsig","C:\iLO\iLOFirmwares\ComponentFile\3414\cp034141_part3.compsig","C:\iLO\iLOFirmwares\ComponentFile\3414\cp034141_part4.compsig")

PS C:\> ,$connection | Add-HPEiLORepositoryComponent -Location "C:\iLO\iLOFirmwares\ComponentFile\3414\cp034141.exe" -CompSigLocation $file
```

This cmdlet adds the repository component which is greater than 32 MB on iLO 5 with an array of connection objects passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Add-HPEiLORepositoryComponent  -Connection $connection -Location "C:\iLOFirmware\cp033330.exe" -CompSigLocation "C:\iLOFirmware\cp033330.compsig" -UploadTimeout 700 -TPMEnabled
```

This cmdlet adds the repository component on iLO 5 with an array of connection objects passed as named parameter.

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

### -CompSigLocation
The signature file location.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TPMEnabled
If set to true, then the TPMOverrideFlag is passed in on the associated flash operations.

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

### -UpdateTarget
If set to true, the component starts flashing immediately after uploading to the iLO repository.

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

### -UpdateRecoverySet
If set to Yes, then the corresponding component is set as RecovertSet component.
NOTE: The user must have SystemRecoverySet privilege in order to use the parameter.

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

### -UploadTimeout
The timeout value for uploading the repository component.

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
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
File size greater than 32 MB can be added only via local file path.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLORepositoryComponent]()

[Remove-HPEiLORepositoryComponent]()

[Get-HPEiLORepositoryComponent]()

