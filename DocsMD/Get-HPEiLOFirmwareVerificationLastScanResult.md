---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFirmwareVerificationLastScanResult

## SYNOPSIS
Gets the firmware verification scan result.

## SYNTAX

```
Get-HPEiLOFirmwareVerificationLastScanResult [-Connection] <Connection[]> [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOFirmwareVerificationLastScanResult cmdlet gets the latest firmware verification scan result.
Advanced License is required for this feature without which properties with empty value will be returned.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\>$output =  ,$connection | Get-HPEiLOFirmwareVerificationLastScanResult

FirmwareStatus     : {HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus}
LastScanTime       : 7/3/2017 2:44:41 PM
LastScanResult     : OK
LastFailedImageUri : 
IP                 : 10.20.30.40
Hostname           : abcd.com
Status             : OK
StatusInfo         :

PS C:\> $output.FirmwareStatus | fl

Name               : iLO 5
Version            : 1.30 May 31 2018
Status             : HPE.iLO.Response.Redfish.Status
RecoverySetVersion : 1.30

Name               : System ROM
Version            : U33 v1.22 (09/29/2017)
Status             : HPE.iLO.Response.Redfish.Status
RecoverySetVersion : 

Name               : System Programmable Logic Device
Version            : 0x13
Status             : HPE.iLO.Response.Redfish.Status
RecoverySetVersion : 

Name               : Innovation Engine (IE) Firmware
Version            : 0.1.6.0
Status             : HPE.iLO.Response.Redfish.Status
RecoverySetVersion : 

Name               : Server Platform Services (SPS) Firmware
Version            : 4.0.4.288
Status             : HPE.iLO.Response.Redfish.Status
RecoverySetVersion :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOFirmwareVerificationLastScanResult -Connection $connection 

FirmwareStatus     : {HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus}
LastScanTime       : 7/3/2017 2:44:41 PM
LastScanResult     : OK
LastFailedImageUri : 
IP                 : 10.20.30.40
Hostname           : abcd.com
Status             : OK
StatusInfo         : 

FirmwareStatus     : {HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus, 
                     HPE.iLO.Response.Redfish.FirmwareStatus}
LastScanTime       : 7/3/2018 2:44:41 PM
LastScanResult     : OK
LastFailedImageUri : 
IP                 : 10.20.30.41
Hostname           : xyz.domain.com
Status             : OK
StatusInfo         :
```

This example shows the output on iLO 5 with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.FirmwareVerificationLastScanResult[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Invoke-HPEiLOFirmwareVerificationScan]()

