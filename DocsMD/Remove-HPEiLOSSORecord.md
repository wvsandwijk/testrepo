---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Remove-HPEiLOSSORecord

## SYNOPSIS
Removes an HPE SIM Trusted SSO Server record.

## SYNTAX

```
Remove-HPEiLOSSORecord [-Connection] <Connection[]> -Index <UInt32[]> [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Remove-HPEiLOSSORecord cmdlet removes an HPE SIM Trusted SSO Server record.
You must have Configure iLO Settings privilege to execute This cmdlet.
In iLO 5 servers - When This cmdlet is run multiple times on the same iLO, the servers are deleted in the order that the records are specified, and the records are renumbered by each deletion.
Delete records in the highest-to-lowest order if you want to delete multiple records at the same time.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Remove-HPEiLOSSORecord -Index 1
```

This cmdlet deletes the SSO record present in index 1 of iLO 4 or iLO 5, when the connection object is passed as pipeline input.

### EXAMPLE 2
```
C:\PS> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> Remove-HPEiLOSSORecord -Connection $connection -Index 2
```

This cmdlet deletes the SSO record present in index 2 of iLO 4 and iLO 5, when an array of connection objects is passed named parameter.

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

### -Index
Indicates the record number to delete.
This number is consistent with the index returned using a Get-HPEiLOSSOSetting command.

Alias : Record

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases: Record

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
System.Int32[]
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLOSSORecord]()

[Get-HPEiLOSSOSetting]()

[Set-HPEiLOSSOSetting]()

