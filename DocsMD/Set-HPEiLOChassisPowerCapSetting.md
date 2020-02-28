---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOChassisPowerCapSetting

## SYNOPSIS
Modifies Apollo chassis Power capping settings

## SYNTAX

```
Set-HPEiLOChassisPowerCapSetting [-Connection] <Connection[]> -ZoneNumber <UInt32[][]>
 -PowerLimitInWatts <UInt32[][]> [-Force] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets Apollo chassis Power cap settings.
This cmdlet works only on iLO 5 Apollo servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.28 admin admin123 -DisableCertificateAuthentication -Verbose
$zoneNumber = ,@(2,3)
$powerLimit = ,@(300,400)
$obj = $con | Set-HPEiLOChassisPowerCapSetting  -ZoneNumber $zoneNumber -PowerLimitInWatts $powerLimit
```

Chassis power cap setting on a single iLO 5 server.

### EXAMPLE 2
```
$con = Connect-HPEiLO 192.168.10.28 admin admin123 -DisableCertificateAuthentication -Verbose
$zoneNumber1 = ,@(2,3)
$powerLimit1 = ,@(300,400)
$zoneNumber2 = ,@(0,1)
$powerLimit2 = ,@(900,100)
$zonenums = @()
$zonenums += $zoneNumber1
$zonenums += $zoneNumber2
$powernums = @()
$powernums += $powerLimit1
$powernums += $powerLimit2
$obj = Set-HPEiLOChassisPowerCapSetting -Connection $con -ZoneNumber $zonenums -PowerLimitInWatts $powernums
```

Chassis power cap setting on a multiple iLO 5 server.

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

### -ZoneNumber
The zone number either on the entire chassis or specific zone.
0 for entire chassis, other number is for specific zone.

```yaml
Type: UInt32[][]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PowerLimitInWatts
The target power limit (in Watts) for the zone, it will be set to null when power limit disabled.

```yaml
Type: UInt32[][]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
System.UInt32[][]
## OUTPUTS

### HPE.iLO.Response.Redfish.PowerCapSetting
## NOTES

## RELATED LINKS

[Connect-HPEiLO]()

[Get-HPEiLOChassisPowerCapSetting]()

[http://www.hpe.com/servers/powershell]()

