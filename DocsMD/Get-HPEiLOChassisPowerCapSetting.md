---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisPowerCapSetting

## SYNOPSIS
Gets Apollo Chassis power cap settings.

## SYNTAX

```
Get-HPEiLOChassisPowerCapSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet gets the chassis power cap settings information and is supported only on Apollo series iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.28 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\Windows\system32> $chasis = $con | get-hpeiloChassisPowerCapSetting 
PS C:\Windows\system32> $chasis
IP                : 192.168.10.28
Hostname          : xl170r-01gen10.powershvpn.com
Status            : OK
StatusInfo        : 
ActualPowerLimits : {HPE.iLO.Response.Redfish.ActualPowerLimits, HPE.iLO.Response.Redfish.ActualPowerLimits, HPE.iLO.Response.Redfish.ActualPowerLimits, HPE.iLO.Response.Redfish.ActualPowerLimits}
PowerLimitRanges  : {HPE.iLO.Response.Redfish.PowerLimitRanges, HPE.iLO.Response.Redfish.PowerLimitRanges, HPE.iLO.Response.Redfish.PowerLimitRanges, HPE.iLO.Response.Redfish.PowerLimitRanges}
PowerLimits       : {HPE.iLO.Response.Redfish.PowerLimits, HPE.iLO.Response.Redfish.PowerLimits, HPE.iLO.Response.Redfish.PowerLimits, HPE.iLO.Response.Redfish.PowerLimits}
PS C:\Windows\system32> $chasis.ActualPowerLimits
PowerLimitInWatts ZoneNumber
----------------- ----------
                6          0
              200          1
              300          2
              400          3
PS C:\Windows\system32> $chasis.PowerLimitRanges
MaximumPowerLimit MinimumPowerLimit ZoneNumber
----------------- ----------------- ----------
             1562               965          0
                0                 0          1
              404               108          2
              404               108          3
PS C:\Windows\system32> $chasis.PowerLimits
PowerLimitInWatts ZoneNumber
----------------- ----------
             1200          0
              200          1
              300          2
              400          3
```

Gets chassis power cap settings on iLO 5.

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

### HPE.iLO.Response.Redfish.PowerCapSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOChassisPowerCapSetting]()

