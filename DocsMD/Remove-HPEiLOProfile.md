---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Remove-HPEiLOProfile

## SYNOPSIS
Removes a deployment profile.

## SYNTAX

```
Remove-HPEiLOProfile [-Connection] <Connection[]> -ProfileDescriptionName <String[]> [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Remove-HPEiLOProfile command removes a deployment profile.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Remove-HPEiLOProfile -ProfileDescriptionName testgroup
```

This example shows output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Remove-HPEiLOProfile -Connection $connection -ProfileDescriptionName testgroup
```

This example shows output on iLO 5 with an array of connection objects passed as named input.

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

### -ProfileDescriptionName
Specifies the descriptive name of the profile.
The value must be unique on the server, and be less than 27 characters long.
Only alphanumerics and underscores are accepted; spaces, periods, and slashes are invalid.
An empty string is invalid.

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

[Invoke-HPEiLOProfileApply]()

[Invoke-HPEiLOProfileDownload]()

[Get-HPEiLOProfile]()

[Get-HPEiLOProfileApplyResult]()

