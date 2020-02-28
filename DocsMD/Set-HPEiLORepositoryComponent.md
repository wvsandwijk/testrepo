---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLORepositoryComponent

## SYNOPSIS
Modifies the existing repository component data.

## SYNTAX

```
Set-HPEiLORepositoryComponent [-Connection] <Connection[]> -Filename <String[]> [-Criticality <String[]>]
 [-Configuration <String[]>] [-ExecutionParameter <String[]>] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLORepositoryComponent cmdlet modifies the existing repository information.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLORepositoryComponent -FileName "cp034766.exe" -ExecutionParameters "/silent /force"  -Criticality Recommended
```

This cmdlet adds the maintenance window to iLO 5 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLORepositoryComponent -FileName "ilo5_135.bin" -ExecutionParameters "/silent /force"  -Criticality Recommended
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

### -Filename
Specifies the file name of the component which needs to be modified.

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

### -Criticality
Specifies the criticality of the component.
Accepted values are 'Critical', 'Optional', and 'Recommended'.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Optional, Recommended, Critical

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Configuration
Specifies a string defining customized parameters for some components provided by client at upload time and given to the component at execution time.
Accepts a string of length between 0 to 1280.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ExecutionParameter
Client supplied execution parameters.
These are supplied at upload time and given to the component at execution time.
Accepts a string of length between 0 to 256.

```yaml
Type: String[]
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
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Add-HPEiLORepositoryComponent]()

[Get-HPEiLORepositoryComponent]()

[Remove-HPEiLORepositoryComponent]()

