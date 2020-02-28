---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOChassisPowerRegulatorSetting

## SYNOPSIS
Sets Apollo chassis power regulator settings.

## SYNTAX

```
Set-HPEiLOChassisPowerRegulatorSetting [-Connection] <Connection[]> [-EEPROMSaveEnabled <String[]>]
 [-PowerRegulationEnabled <String[]>] [-PowerRegulatorMode <String[]>] [-Force] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Sets Apollo chassis Power regulator settings.
This cmdlet works only on iLO 5 servers.

Power regulation can take the following values:
1) ACRedundancy: AC Redundancy with Throttling Mode (Max Performance w/ Redundancy)
2) FullACDCRedundancy: Full AC/DC Redundancy Mode
3) UserConfig: User Configurable Mode
4) APM: APM Power Regulator Mode.
Cannot configure by iLO
5) PowerFeedProtect: Power Feed Protection Mode

## EXAMPLES

### EXAMPLE 1
```
$con34 = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
$con34 | Set-HPEiLOChassisPowerRegulatorSetting -EEPROMSaveEnabled Yes -PowerRegulationEnabled No -PowerRegulatorMode ACRedundancyiwthThrottlingMode -Force
```

Sets the above settings on the chassis power regulatory settings.

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

### -EEPROMSaveEnabled
Determines whether the EEPROM save is enabled or disabled.

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

### -PowerRegulationEnabled
Determines whether power regulation is enabled or disabled.

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

### -PowerRegulatorMode
Power regulation can take the following values:
1) ACRedundancy: AC Redundancy with Throttling Mode (Max Performance w/ Redundancy)
2) FullACDCRedundancy: Full AC/DC Redundancy Mode
3) UserConfig: User Configurable Mode
4) APM: APM Power Regulator Mode.
Cannot configure by iLO
5) PowerFeedProtect: Power Feed Protection Mode

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: ACRedundancyiwthThrottlingMode, FullACDCRedundancyMode, UserConfigMode, APMPowerCappingMode, PowerFeedProtectionMode

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
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

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
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOChassisPowerRegulatorSetting]()

