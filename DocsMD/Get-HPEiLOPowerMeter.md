---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOPowerMeter

## SYNOPSIS
Gets Power Meter details of the target iLO.

## SYNTAX

```
Get-HPEiLOPowerMeter [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets both PowerMeter and Fast PowerMeter sample details with count.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.31 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\> $p = $con | get-hpeilopowermeter 
PS C:\> $p
IP                 : 192.168.10.28
Hostname           : xl170r-01gen10.powershvpn.com
Status             : OK
StatusInfo         : 
PowerMeterInfo     : HPE.iLO.Response.Redfish.PowerMeter
FastPowerMeterInfo : HPE.iLO.Response.Redfish.PowerMeter
PS C:\> $p.PowerMeterInfo
Average      : 28
Samples      : 287
Maximum      : 38
Minimum      : 28
PowerDetails : {HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail...}
PS C:\Windows\system32> $p.PowerMeterInfo.PowerDetails | ft

AmbTemp Average Cap CpuAvgFreq CpuCapLim CpuMax CpuPwrSavLim CpuUtil CpuWatts DimmWatts
------- ------- --- ---------- --------- ------ ------------ ------- -------- ---------
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       20        53
     22      28   0          0       100      0          100       0       19        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
                     *
                     * (data truncated for help purpose) 
                     *
     22      28   0          0       100      0          100       0       18        53

PS C:\Windows\system32> $p.FastPowerMeterInfo
Average      : 28
Samples      : 120
Maximum      : 37
Minimum      : 28
PowerDetails : {HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail, HPE.iLO.Response.Redfish.PowerDetail...}
PS C:\Windows\system32> $p.FastPowerMeterInfo.PowerDetails
PS C:\Windows\system32> $p.FastPowerMeterInfo.PowerDetails | ft

AmbTemp Average Cap CpuAvgFreq CpuCapLim CpuMax CpuPwrSavLim CpuUtil CpuWatts DimmWatts
------- ------- --- ---------- --------- ------ ------------ ------- -------- ---------
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        52
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       20        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       20        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       23        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       20        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       19        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       20        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        52
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        54
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       18        53
     22      28   0          0       100      0          100       0       20        54
     22      28   0          0       100      0          100       0       18        53
                     *
                     * (data truncated for help purpose) 
                     *
     22      28   0          0       100      0          100       0       18        53
```

Gets power meter details of an iLO 5 server.

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

### HPE.iLO.Response.Redfish.PowerMeterEx[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOPowerReading]()

[Get-HPEiLOPowerRegulatorSetting]()

[Get-HPEiLOPowerCapSetting]()

[Connect-HPEiLO]()

