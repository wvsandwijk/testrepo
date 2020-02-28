---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOProcessorJitterControl

## SYNOPSIS
Gets the Processor Jitter Control detail.

## SYNTAX

```
Get-HPEiLOProcessorJitterControl [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOProcessorJitterControl cmdlet gets the Processor Jitter Control detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOProcessorJitterControl

PS C:\> $out

Mode                               : Auto
FrequencyLimitMHz                  : 800
ProcessorJitterControlOptimization : 
ConfiguredFrequencyLimitMHz        : 1000
IP                                 : 192.168.10.31
Hostname                           : bl460cgen10-03.powershvpn.com
Status                             : OK
StatusInfo                         :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = Get-HPEiLOProcessorJitterControl -Connection $connection

PS C:\> $out

Mode                               : Auto
FrequencyLimitMHz                  : 1200
ProcessorJitterControlOptimization : 
ConfiguredFrequencyLimitMHz        : 800
IP                                 : 192.168.10.31
Hostname                           : bl460cgen10-03.powershvpn.com
Status                             : OK
StatusInfo                         : 


Mode                               : Auto
FrequencyLimitMHz                  : 2200
ProcessorJitterControlOptimization : OptimizedForLatency
ConfiguredFrequencyLimitMHz        : 3000
IP                                 : 192.168.10.34
Hostname                           : xl170rgen10-02.powershvpn.com
Status                             : OK
StatusInfo                         :
```

This example shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.ProcessorJitterControl[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

