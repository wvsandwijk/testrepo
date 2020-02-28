---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Invoke-HPEiLOProfileApply

## SYNOPSIS
Applies a deployment setting profile in iLO 4.

## SYNTAX

```
Invoke-HPEiLOProfileApply [-Connection] <Connection[]> -ProfileDescriptionName <String[]> -Action <String[]>
 [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
You can script automated server configuration packages (deployment settings) to install multiple servers through iLO using PROFILE scripts.
Use the Invoke-HPEiLOProfileApply cmdlet to apply a deployment setting profile in iLO 4.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Invoke-HPEiLOProfileApply -ProfileDescriptionName admin -Action ApplyNow
```

This cmdlet shows the usage of cmdlet in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Invoke-HPEiLOProfileApply -Connection $connection -ProfileDescriptionName admin -Action ApplyNow
```

This cmdlet shows the usage of cmdlet in which the connection object is passed as named parameter.

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
This parameter specifies the descriptive name of the profile.
The value must be unique on the server, and be a maximum of 27 characters long.
Only alphanumerics and underscores are accepted.
Spaces, periods, and slashes are invalid.
An empty string is also invalid.

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

### -Action
Toggle that controls whether the profile is immediately applied or is staged until the next reboot.
Valid values are Stage and ApplyNow.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: ApplyNow, Stage

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

### System.Object
If the cmdlet executes successfully, then a return object with StatusType "Warning" is returned.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLOProfileDownload]()

[Get-HPEiLOProfile]()

[Remove-HPEiLOProfile]()

[Get-HPEiLOProfileApplyResult]()

