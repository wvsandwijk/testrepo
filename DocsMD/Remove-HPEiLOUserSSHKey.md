---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Remove-HPEiLOUserSSHKey

## SYNOPSIS
Removes any SSH keys associated with a particular UserLogin.

## SYNTAX

```
Remove-HPEiLOUserSSHKey [-Connection] <Connection[]> -UserLoginToEdit <String[]> [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Remove-HPEiLOUserSSHKey cmdlet removes any SSH keys associated with a particular UserLogin.
Admin privilege is required to execute this cmdlet.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Remove-HPEiLOUserSSHKey -UserLoginToEdit testuser1
```

This cmdlet removes the SSHkey for user given in UserLoginToEdit from iLO user accounts of iLO 4 when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Remove-HPEiLOUserSSHKey -Connection $connection -UserLogintoEdit testuser1
```

This cmdlet removes the user SSHKey given in UserLogintoEdit from iLO user accounts of iLO 4 when an array of connection objects is passed as named parameter.

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

### -UserLoginToEdit
Specifies the UserLogin for which the SSH keys are to be deleted.
The value must not be blank.

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

[Import-HPEiLOUserSSHKey]()

