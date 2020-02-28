---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Invoke-HPEiLOFirmwareVerificationScan

## SYNOPSIS
Invokes the firmware verification scan run.

## SYNTAX

```
Invoke-HPEiLOFirmwareVerificationScan [-Connection] <Connection[]> [-ScanTimeout <UInt32[]>]
 [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Invoke-HPEiLOFirmwareVerificationScan cmdlet invokes the firmware verification scan run.
The cmdlet is supported only on iLO 5 servers.

NOTE :
.
When a firmware verification scan is in progress, you cannot install firmware updates or upload firmware to the iLO Repository.
.
Advanced license is required to execute this cmdlet.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Invoke-HPEiLOFirmwareVerificationScan -ScanTimeout 10

PS C:\> $out

ScanTime       : 7/10/2017 7:38:17 PM
ScanResult     : OK
FailedImageUri : 
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     :
```

This cmdlet shows the output of cmdlet in iLO 5, when connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Invoke-HPEiLOFirmwareVerificationScan -ScanTimeout 10

PS C:\> $out

ScanTime       : 7/10/2017 7:38:17 PM
ScanResult     : OK
FailedImageUri : 
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     : 

ScanTime       : 7/10/2017 7:38:17 PM
ScanResult     : OK
FailedImageUri : 
IP             : 10.20.30.41
Hostname       : xyz.com
Status         : OK
StatusInfo     :
```

This cmdlet shows the output of iLO 5, with an array of iLO connection objects passed as named parameter.

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

### -ScanTimeout
Time taken to retrieve the scan result in seconds.
The supported value is from 10 to 100.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 30
Accept pipeline input: True (ByPropertyName)
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
System.UInt32[]
## OUTPUTS

### HPE.iLO.Response.Redfish.FirmwareVerificationLastScanResult[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOFirmwareVerificationLastScanResult]()

