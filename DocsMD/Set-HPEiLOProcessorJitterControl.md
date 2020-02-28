---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOProcessorJitterControl

## SYNOPSIS
Sets the Processor Jitter control.

## SYNTAX

```
Set-HPEiLOProcessorJitterControl [-Connection] <Connection[]> [-Mode <String[]>]
 [-FrequencyLimitMHz <UInt32[]>] [-ProcessorJitterControlOptimization <String[]>] [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOProcessorJitterControl cmdlet sets the Processor Jitter control.
This cmdlet is supported only on iLO 5 servers.
This setting is part of Intelligent System Tuning.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOProcessorJitterControl -Mode Manual -FrequencyLimitMHz 800 -ProcessorJitterControlOptimization OptimizedForLatency
```

This example sets the value of Processor Jitter Control on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.2,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOProcessorJitterControl -Connection $connection -Mode Auto
```

This example sets the value of Processor Jitter Control on iLO 5 with an array of iLO connection objects passed as named parameter.

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

### -Mode
Provides various jitter control modes:
• Auto - When configured in Auto mode, the platform will monitor frequency variance of the processor and automatically make adjustments to minimize variance over time.
• Manual - When configured in Manual mode, you can operate the processor at a fixed frequency.
• Disabled - Jitter control is disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Auto, Disabled, Manual

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FrequencyLimitMHz
Frequency limit of the Processor in MHz.
Value ranges from 0-10000.

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

### -ProcessorJitterControlOptimization
Provides Jitter Control Optimizations and below are the accepted values:
.
OptimizedForThroughput: Threshold and Polling rate will be optimized for Maximum Throughput
.
OptimizedForLatency: Threshold and Polling rate will be optimized for Low Latency
.
ZeroLatency:Threshold and Polling rate will be optimized for Zero Latency

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: OptimizedForThroughput, OptimizedForLatency, ZeroLatency

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
Accepted values: PSObject, RawRequest, RawResponse

Required: False
Position: Named
Default value: Object
Accept pipeline input: False
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
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOProcessorJitterControl]()

