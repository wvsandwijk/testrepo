---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOFirmwareVerificationScanSetting

## SYNOPSIS
Modifies the firmware verification scan setting.

## SYNTAX

```
Set-HPEiLOFirmwareVerificationScanSetting [-Connection] <Connection[]> [-BackgroundScanEnabled <String[]>]
 [-IntegrityFailureAction <String[]>] [-ScanInterval <UInt32[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOFirmwareVerificationScanSetting cmdlet modifies the firmware verification scan setting.
This cmdlet is supported only in iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOFirmwareVerificationScanSetting -BackgroundScanEnabled Yes -IntegrityFailureAction LogAndRepairAutomatically -ScanInterval 10
```

This command shows the output on iLO 5 and connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> Set-HPEiLOFirmwareVerificationScanSetting -Connection $connection -BackgroundScanEnabled Yes -IntegrityFailureAction LogAndRepairAutomatically -ScanInterval 10
```

This cmdlet shows the output on iLO 5 when array of connection object is passed as named parameter.

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

### -BackgroundScanEnabled
Enables or disables Firmware Verification scanning.
When enabled, iLO scans the supported installed firmware for file corruption.

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

### -IntegrityFailureAction
Determines the action iLO takes when a problem is found during a Firmware Verification scan.
.
To log the results, select LogOnly.
.
To log the results and initiate a repair action, select LogAndRepairAutomatically.
If a problem is detected for a supported firmware type, iLO checks for the affected firmware type in a protected install set.
By default, this set is the Recovery Set.
If a firmware image is available, iLO flashes that firmware image to complete the repair.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: LogOnly, LogAndRepairAutomatically

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ScanInterval
Sets the background scan frequency in days.
Valid values are from 1 to 365.

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

[Connect-HPEiLO]()

[Get-HPEiLOFirmwareVerificationScanSetting]()

