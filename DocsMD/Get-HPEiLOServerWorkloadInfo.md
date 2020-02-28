---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOServerWorkloadInfo

## SYNOPSIS
Gets the list of workload characteristics for metrics.

## SYNTAX

```
Get-HPEiLOServerWorkloadInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The cmdlet Get-HPEiLOServerWorkloadInfo gets the list of workload characteristics for metrics.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOServerWorkloadInfo

PS C:\> $out

ServerWorkloadData : {HPE.iLO.Response.Redfish.ServerWorkloadData, HPE.iLO.Response.Redfish.ServerWorkloadData, 
                     HPE.iLO.Response.Redfish.ServerWorkloadData}
IP                 : 10.20.30.1
Hostname           : xl170rgen10-02.powershvpn.com
Status             : OK
StatusInfo         : 

PS C:\> $out.ServerWorkloadData | fl


Duration                : 10min
WorkloadCharacteristics : {HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics, 
                          HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics}

Duration                : 60min
WorkloadCharacteristics : {HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics, 
                          HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics}

Duration                : 24hr
WorkloadCharacteristics : {HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics, 
                          HPE.iLO.Response.Redfish.WorkloadCharacteristics, HPE.iLO.Response.Redfish.WorkloadCharacteristics}

PS C:\> $out.ServerWorkloadData[0].WorkloadCharacteristics

MetricId      MetricValue
--------      -----------
CPUUtil       Low        
MemoryBusUtil Low        
IOBusUtil     Low        
CPUICUtil     High
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = Get-HPEiLOServerWorkloadInfo -Connection $connection

PS C:\> $out

ServerWorkloadData : {HPE.iLO.Response.Redfish.ServerWorkloadData, HPE.iLO.Response.Redfish.ServerWorkloadData, 
                     HPE.iLO.Response.Redfish.ServerWorkloadData}
IP                 : 10.20.30.1
Hostname           : abc.com
Status             : OK
StatusInfo         : 

ServerWorkloadData : {HPE.iLO.Response.Redfish.ServerWorkloadData, HPE.iLO.Response.Redfish.ServerWorkloadData, 
                     HPE.iLO.Response.Redfish.ServerWorkloadData}
IP                 : 10.20.30.2
Hostname           : pqrs.com
Status             : OK
StatusInfo         :
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.ServerWorkloadInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

