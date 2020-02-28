---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOLanguagePack

## SYNOPSIS
Adds the language pack to the iLO.

## SYNTAX

```
Add-HPEiLOLanguagePack [-Connection] <Connection[]> -Location <String[]> [-TPMEnabled]
 [-UploadTimeout <UInt32[]>] [-UpdateRepository] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOLanguagePack cmdlet adds the language pack to iLO.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Add-HPEiLOLanguagePack -Location "C:\iLOFirmware\lang_ja_222.lpk" -UploadTimeout 300 -TPMEnabled
```

This cmdlet adds the language pack to iLO 4 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $connection  | Add-HPEiLOLanguagePack -Location "C:\iLOFirmware\lang_ja_222.lpk" -UploadTimeout 300 -TPMEnabled -UpdateRepository
```

This cmdlet adds the language pack to iLO 5 when the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Add-HPEiLOLanguagePack -Connection $Connection -Location "C:\iLOFirmware\lang_ja_222.lpk" -UploadTimeout 300 -TPMEnabled
```

This cmdlet adds the language pack on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### -UploadTimeout
The timeout value for uploading the language pack.

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

### -UpdateRepository
If set to true, the language pack file is added to the iLO repository.
This parameter is supported only on the iLO 5 server.

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
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOLanguage]()

[Set-HPEiLOLanguage]()

[Remove-HPEiLOLanguagePack]()

