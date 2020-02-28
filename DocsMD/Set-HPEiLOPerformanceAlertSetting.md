---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOPerformanceAlertSetting

## SYNOPSIS
Modifies the lower or upper threshold for the specified sensor.

## SYNTAX

```
Set-HPEiLOPerformanceAlertSetting [-Connection] <Connection[]> -Sensor <String[]>
 [-LowerThresholdReading <UInt32[]>] [-LowerThresholdDwellTime <UInt32[]>] [-UpperThresholdReading <UInt32[]>]
 [-UpperThresholdDwellTime <UInt32[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOPerformanceAlertSetting cmdlet modifies the lower or upper threshold for the specified sensor.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\>,$connection | Set-HPEiLOPerformanceAlertSetting -Sensor CPUUtilization -LowerThresholdReading 80 -LowerThresholdDwellTime 20

PS C:\>
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2,10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $obj = Set-HPEiLOPerformanceAlertSetting -Connection $connection -Sensor CPUUtilization -LowerThresholdReading 80 -LowerThresholdDwellTime 40

PS C:\>
```

This cmdlet shows the output on iLO 5 with the array of connection object passed as named parameter.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and username and password provided to log in to the iLO.

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

### -Sensor
The name of the sensor for which the threshold is to be set.
Valid values are 'CPUUtilization', 'MemoryBusUtilization', 'IOBusUtilization', 'CPUInterconnectUtilization', 'JitterCount', and 'CPUPower'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: CPUUtilization, MemoryBusUtilization, IOBusUtilization, CPUInterconnectUtilization, JitterCount, CPUPower

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LowerThresholdReading
The lowest value the sensor can report before an event is posted in the IML.
Valid values are from 1 to 100.

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

### -LowerThresholdDwellTime
The number of seconds the sensor reading is below the configured value before the threshold is violated.
When a threshold is violated, an event is posted in the IML.

For example, if you set an upper threshold to 70% with a dwell time of 30 seconds, an event is posted when the sensor reports readings over 70% for more than 30 seconds.

To enable an alert, set the dwell time between 20 and 64800 (20 seconds to 18 hours) in multiples of 20.
If you enter a value that is not a multiple of 20, the value is rounded up to the next multiple of 20.

To disable an alert, set the dwell time to 0.

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

### -UpperThresholdReading
The highest value the sensor can report before an event is posted in the IML.
Valid values are from 1 to 100.
• For utilization sensors, enter a percentage of utilization for the selected sensor.
• For CPU Power, enter a value in watts.
• For Jitter Count, enter the threshold count.

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

### -UpperThresholdDwellTime
The number of seconds the sensor reading is above the configured value before the threshold is violated.
When a threshold is violated, an event is posted in the IML.

For example, if you set an upper threshold to 70% with a dwell time of 30 seconds, an event is posted when the sensor reports readings over 70% for more than 30 seconds.

To enable an alert, set the dwell time between 20 and 64800 (20 seconds to 18 hours) in multiples of 20.
If you enter a value that is not a multiple of 20, the value is rounded up to the next multiple of 20.

To disable an alert, set the dwell time to 0.

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None.
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOPerformanceAlertSetting]()

