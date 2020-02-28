---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOPerformanceMonitoringData

## SYNOPSIS
Gets performance monitoring data on iLO5.

## SYNTAX

```
Get-HPEiLOPerformanceMonitoringData [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlets gets complete performance monitoring data from all sensors from an iLO5 server only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $con = Connect-HPEiLO 192.168.10.31 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $pdata = $con | Get-HPEiLOPerformanceMonitoringData

PS C:\> $pdata

CPUUtilization             : HPE.iLO.Response.Redfish.MonitoringData
MemoryBusUtilization       : HPE.iLO.Response.Redfish.MonitoringData
IOBusUtilization           : HPE.iLO.Response.Redfish.MonitoringData
CPUInterConnectUtilization : HPE.iLO.Response.Redfish.MonitoringData
JitterCount                : HPE.iLO.Response.Redfish.MonitoringData
AvgCPUFreqency             : HPE.iLO.Response.Redfish.MonitoringData
CPUPower                   : HPE.iLO.Response.Redfish.MonitoringData
IP                         : 192.168.10.31
Hostname                   : bl460cgen10-03.powershvpn.com
Status                     : OK
StatusInfo                 : 

PS C:\> $pdata.AvgCPUFreqency

Id                   : AvgCPU0Freq
Calculable           : NonSummable
CalculationAlgorithm : Average
Description          : Metric definition for average CPU0 frequency
Implementation       : PhysicalSensor
IsLinear             : True
MaxReadingRange      : 4000
MetricProperties     : {/redfish/v1/Systems/1/#SystemUsage/AvgCPU0Freq}
MetricDataType       : Decimal
MetricType           : Numeric
MinReadingRange      : 0
Name                 : Metric definition for average CPU0 frequency
Units                : MHz



PS C:\>$pdata.CPUInterConnectUtilization


Id                   : CPUICUtil
Calculable           : NonSummable
CalculationAlgorithm : Average
Description          : Metric definition for CPU interconnect utilization
Implementation       : PhysicalSensor
IsLinear             : True
MaxReadingRange      : 100
MetricProperties     : {/redfish/v1/Systems/1/#SystemUsage/CPUICUtil}
MetricDataType       : Decimal
MetricType           : Numeric
MinReadingRange      : 0
Name                 : Metric definition for CPU interconnect utilization
Units                : %
```

Above examples gets the performance monitoring data for an iLO5 server.

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

### HPE.iLO.Communication.Redfish.PerformanceMonitoringData
## NOTES

## RELATED LINKS
