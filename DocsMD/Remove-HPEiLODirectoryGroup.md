---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Remove-HPEiLODirectoryGroup

## SYNOPSIS
Removes an item from iLO directory group list.

## SYNTAX

```
Remove-HPEiLODirectoryGroup [-Connection] <Connection[]> -GroupName <String[]> [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Remove-HPEiLODirectoryGroup cmdlet removes an existing Directory Group from iLO.
This cmdlet is supported on iLO5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $con = Connect-HPEiLO 192.168.10.10,192.168.10.31 admin admin123 -DisableCertificateAuthentication

PS C:\>  $rm = $con[0] | Remove-hpeiloDirectoryGroup -GroupName "z1" -verbose

PS C:\>  $rm = $con[1] | Remove-hpeiloDirectoryGroup -GroupName "z2" -verbose
```

First remove directory group cmdlet trying to remove the group name by its name and second cmdlet is trying to remove it by using group name and group SID as they are the required parameters for searching the list of directory groups.
Only supported on iLO5.

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

### -GroupName
The name of the iLO directory group to be deleted.
This name must already exist as a directory group.

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
Default value: None
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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Add-HPEiLODirectoryGroup]()

[Get-HPEiLODirectoryGroup]()

[Set-HPEiLODirectoryGroup]()

[Get-HPEiLODirectorySetting]()

[Set-HPEiLODirectorySetting]()

