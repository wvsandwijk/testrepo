---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOMaintenanceWindow

## SYNOPSIS
Gets the maintenance window information.

## SYNTAX

```
Get-HPEiLOMaintenanceWindow [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOMaintenanceWindow cmdlet gets the maintenance window information.
A maintenance window is a configured time period that applies to an installation task.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLOMaintenanceWindow

PS C:\> $out

MaintenanceWindowInfo : {HPE.iLO.Response.Redfish.MaintenanceWindowInfo, HPE.iLO.Response.Redfish.MaintenanceWindowInfo}
IP                    : 10.20.30.2
Hostname              : abc.com
Status                : OK
StatusInfo            : 

PS C:\> $out.MaintenanceWindowInfo 

Id          : a10a33e5
Name        : TestMaint
Created     : 2018-09-24T04:26:05Z
Description : This is a test maintenance window
StartAfter  : 9/28/2018 3:15:00 AM
Expire      : 9/29/2018 3:15:00 AM
Modified    : 9/24/2018 4:26:05 AM

Id          : 44134038
Name        : Maint
Created     : 2018-09-24T04:33:33Z
Description : This is a test maintenance window
StartAfter  : 9/24/2018 10:02:50 AM
Expire      : 9/26/2018 10:03:06 AM
Modified    : 9/24/2018 4:33:33 AM
```

This example shows the output on iLO 5 with the connection object passed as pipeline parameter.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2,10.20.30.1 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLOMaintenanceWindow

PS C:\> $out

MaintenanceWindowInfo : {HPE.iLO.Response.Redfish.MaintenanceWindowInfo, HPE.iLO.Response.Redfish.MaintenanceWindowInfo}
IP                    : 10.20.30.2
Hostname              : abc.com
Status                : OK
StatusInfo            : 

MaintenanceWindowInfo : {HPE.iLO.Response.Redfish.MaintenanceWindowInfo, HPE.iLO.Response.Redfish.MaintenanceWindowInfo}
IP                    : 10.20.30.1
Hostname              : abcd.com
Status                : OK
StatusInfo            :
```

This example shows the output on iLO 5 with an array of connection objects passed as pipeline parameter.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.MaintenanceWindow[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Add-HPEiLOMaintenanceWindow]()

[Set-HPEiLOMaintenanceWindow]()

[Clear-HPEiLOMaintenanceWindow]()

[Remove-HPEiLOMaintenanceWindow]()

