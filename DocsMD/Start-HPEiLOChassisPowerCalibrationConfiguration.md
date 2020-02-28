---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Start-HPEiLOChassisPowerCalibrationConfiguration

## SYNOPSIS
Starts Apollo chassis power calibration configuration.

## SYNTAX

```
Start-HPEiLOChassisPowerCalibrationConfiguration [-Connection] <Connection[]> -ActionType <String[]>
 [-EEPROMSaveEnabled <String[]>] [-Seconds <UInt32[]>] -AllZone <String[]> [-ZoneNumber <UInt32[]>] [-Force]
 [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlets starts the power calibration configuration and once calibration is completed user can invoke Get-HPEiLOChassisPowerCalibrationData to get the calibration data.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.28 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\Windows\system32> $out = $con | Start-HPEiLOChassisPowerCalibrationConfiguration -ActionType Start -EEPROMSaveEnabled Yes -Seconds 70 -AllZone No -ZoneNumber 2 -Verbose
PS C:\Windows\system32> $out
```

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

### -ActionType
Specifies the action type listed in the set values.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Start, Stop

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EEPROMSaveEnabled
To save the calibration data to EEPROM or not.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Seconds
The calibration time.

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

### -AllZone
If All Zones is set to 'true', the ZoneNumber will be discarded.
Chassis manager will calibrate for all zones and derive the minimum and maximum power limit setpoints which is available in PowerLimit settings.
If All Zones is set to 'false', the ZoneNumber will be take effect.
Chassis manager will calibrate for specific zone and derive the throttle peak power data from 0% - 100% which is available in Calibration settings.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ZoneNumber
The zone number either on the entire chassis or specific zone.
Value - 0 for entire chassis, other number is for specific zone.

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
System.String[]
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOChassisPowerCalibrationData]()

[Connect-HPEiLO]()

