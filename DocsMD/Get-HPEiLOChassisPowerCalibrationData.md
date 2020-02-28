---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisPowerCalibrationData

## SYNOPSIS
Gets the Apollo chassis power calibration data.

## SYNTAX

```
Get-HPEiLOChassisPowerCalibrationData [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlets gets detailed calibration data of the Apollo chassis server on iLO 5 only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $con = Connect-HPEiLO 192.168.10.28 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32>$data = $con | Get-HPEiLOChassisPowerCalibrationData 
CalibrationInProgress : False
CalibrationData       : HPE.iLO.Response.Redfish.CalibrationData
IP                    : 192.168.10.28
Hostname              : xl170r-01gen10.powershvpn.com
Status                : OK
StatusInfo            : 

PS C:\Windows\system32> $data.CalibrationData

EndTime           : 2017-01-19 07:30:07
StartTime         : 2017-01-19 07:28:57
State             : True
ZoneNumber        : 2
ThrottlePeakPower : HPE.iLO.Response.Redfish.ThrottlePeakPower

PS C:\Windows\system32> $data.CalibrationData.ThrottlePeakPower | ft

Percent_000 Percent_005 Percent_010 Percent_015 Percent_020 Percent_025 Percent_030 Percent_035 Percent_040 Percent_045
----------- ----------- ----------- ----------- ----------- ----------- ----------- ----------- ----------- -----------
         31          30          30          29          29          29          29          28          28          28
```

Gets calibration data on iLO 5 Apollo chassis server

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

### HPE.iLO.Response.Redfish.ChassisPowerCalibrationData[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Start-HPEiLOChassisPowerCalibrationConfiguration]()

