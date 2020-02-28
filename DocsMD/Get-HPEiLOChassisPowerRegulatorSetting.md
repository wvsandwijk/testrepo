---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisPowerRegulatorSetting

## SYNOPSIS
Gets Apollo chassis Power regulator settings.

## SYNTAX

```
Get-HPEiLOChassisPowerRegulatorSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets Apollo chassis Power regulator settings and works only on Apollo iLO 5 servers.
Determines whether the EEPROM save is enabled or disabled and whether power regulation is enabled or disabled.
Power regulation displays the following values :
1) ACRedundancy: AC Redundancy with Throttling Mode (Max Performance w/ Redundancy)
2) FullACDCRedundancy: Full AC/DC Redundancy Mode
3) UserConfig: User Configurable Mode
4) APM: APM Power Regulator Mode.
Cannot be configured by iLO
5) PowerFeedProtect: Power Feed Protection Mode

## EXAMPLES

### EXAMPLE 1
```
$con34 = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32> $con34 | Get-HPEiLOChassisPowerRegulatorSetting
EEPROMSaveEnabled      : Yes
PowerRegulationEnabled : No
PowerRegulatorMode     : ACRedundancyiwthThrottlingMode
IP                     : 192.168.10.34
Hostname               : xl170rgen10-02.powershvpn.com
Status                 : OK
StatusInfo             :
```

Gets chassis power regulator settings.

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

### HPE.iLO.Response.Redfish.ChassisPowerRegulatorSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOChassisPowerRegulatorSetting]()

