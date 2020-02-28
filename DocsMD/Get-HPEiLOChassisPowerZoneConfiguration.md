---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisPowerZoneConfiguration

## SYNOPSIS
Gets Apollo chassis server Power Zone configuration.

## SYNTAX

```
Get-HPEiLOChassisPowerZoneConfiguration [-Connection] <Connection[]> [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
This cmlet gets power zone configuration on the Apollo chassis server platform.
It is supported only on iLO 5 Apollo servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $con = Connect-HPEiLO 10.20.30.40 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\Windows\system32> $z = $con | Get-HPEiLOChassisPowerZoneConfiguration
PS C:\Windows\system32> $z
Zone       : {HPE.iLO.Response.Redfish.Zone, HPE.iLO.Response.Redfish.Zone}
IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo :  
PS C:\Windows\system32> $z.Zone
Node                            ZoneNumber ZonePriority
----                            ---------- ------------
{HPE.iLO.Response.Redfish.Node}          1            5
{HPE.iLO.Response.Redfish.Node}          2            5
PS C:\Windows\system32> $z.Zone.Node
NodeNumber NodePriority
---------- ------------
         1            5
         3            5
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\Windows\system32>$con = Connect-HPEiLO 10.20.30.40,10.20.30.50 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\Windows\system32> $z = ,$con | Get-HPEiLOChassisPowerZoneConfiguration
PS C:\Windows\system32> $z
Zone       : {HPE.iLO.Response.Redfish.Zone, HPE.iLO.Response.Redfish.Zone}
IP         : 10.20.30.40
Hostname   : ab.com
Status     : OK
StatusInfo :  

Zone       : {HPE.iLO.Response.Redfish.Zone, HPE.iLO.Response.Redfish.Zone}
IP         : 10.20.30.50
Hostname   : abcd.com
Status     : OK
StatusInfo :
```

This example shows the output on iLO 5 with an array of iLO connection objects passed as pipeline parameter.

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

### HPE.iLO.Response.Redfish.ChassisPowerZoneConfiguration[]
## NOTES
The power regulation zone priority, the range must between 1 - 5.
5 is default and the lowest priority.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

