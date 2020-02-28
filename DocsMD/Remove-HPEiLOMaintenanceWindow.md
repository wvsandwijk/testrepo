---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Remove-HPEiLOMaintenanceWindow

## SYNOPSIS
Removes maintenance windows identified by name.

## SYNTAX

```
Remove-HPEiLOMaintenanceWindow [-Connection] <Connection[]> [-OutputType <String>] -Name <String[]>
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet removes the maintenance window identified by name.
A maintenance window is a configured time period that applies to an installation task.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
$con | Remove-HPEiLOMaintenanceWindow -Name Test123
```

Test123 is a maintenance window entry name that will be removed after successful execution.
Only on iLO 5 server.

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

### -Name
Name representing the Maintenance window entry.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

[Add-HPEiLOMaintenanceWindow]()

[Get-HPEiLOMaintenanceWindow]()

[Clear-HPEiLOMaintenanceWindow]()

