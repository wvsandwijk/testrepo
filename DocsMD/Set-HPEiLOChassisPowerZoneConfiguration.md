---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOChassisPowerZoneConfiguration

## SYNOPSIS
Sets the Apollo chassis server power zone configuration.

## SYNTAX

```
Set-HPEiLOChassisPowerZoneConfiguration [-Connection] <Connection[]> -Operation <String[]>
 [-ZoneNumber <UInt32[]>] [-ZonePriority <UInt32[]>] [-NodeNumber <UInt32[][]>] [-NodePriority <UInt32[][]>]
 [-Force] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOChassisPowerZoneConfiguration cmdlet sets the Apollo chassis server power zone configuration.
It allows to set each node to be grouped with the entire chassis or an existing user-defined zone.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\>  $np = ,@(1,3)

PS C:\>  $nn = ,@(1,2)

PS C:\>  ,$connection | Set-HPEiLOChassisPowerZoneConfiguration -ZoneNumber 1 -ZonePriority 3 -Operation Update -NodeNumber $nn -NodePriority $np
```

This example shows output on  iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\>  $np = ,@(1,3)

PS C:\>  $nn = ,@(1,2)

PS C:\> Set-HPEiLOChassisPowerZoneConfiguration -Connection $connection -ZoneNumber 1 -ZonePriority 3 -Operation Update -NodeNumber $nn -NodePriority $np
```

This example shows output on iLO 5 with an array of connection objects passed as pipeline input.

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

### -Operation
Specifies whether an update is to be performed for the existing zone configuration or existing zone configuration is to be replaced with a new zone configuration.
The supported values are 'Update' and 'Replace'.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Update, Replace

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ZoneNumber
Specifies the zone number for which the node is to be assigned or modified.
When the zone number is specified as 0, then the given nodes will be assigned to the chassis.

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

### -ZonePriority
Specifies the power regulation zone priority.
When zones are configured, you can set the power regulation priority for each zone.
When power caps are set, zones with the highest priority receive more power than zones with lower priority settings.

You can set the priority value from 1 to 5.
The highest priority is 1 and the lowest priority is 5.
By default, each zone is set to priority 5.
Multiple zones can be set to the same priority level.

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

### -NodeNumber
The node number of zone configuration.

```yaml
Type: UInt32[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NodePriority
The power regulation node priority.
The range must be between 1 - 5, 5 being the default and lowest priority.

```yaml
Type: UInt32[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.UInt32[]
System.UInt32[][]
## OUTPUTS

### None.
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOChassisPowerZoneConfiguration]()

