---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOTemperature

## SYNOPSIS
Gets the temperature health details of the server.

## SYNTAX

```
Get-HPEiLOTemperature [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOTemperature cmdlet gets the temperature health details of the server.
These details include label, location, status, current reading, caution, and critical temperatures.
The details are returned for the list of temperature gauges.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOTemperature

PS C:\> $obj | fl

Temperature : {Temperature, Temperature, Temperature, Temperature...}
IP          : 10.20.30.40
Hostname    : xyz.example.com
Status      : OK

PS C:\> $obj.Temperature

Name                      : 01-Inlet Ambient
Location                  : Ambient
Status                    : OK
CurrentReadingCelsius     : 17
SensorNumber              : 1
UpperThresholdCritical    : 42
UpperThresholdFatal       : 46
UpperThresholdNonCritical : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
LocationXmm               : 
LocationYmm               : 
LocationZmm               : 

Name                      : 02-CPU 1
Location                  : CPU
Status                    : OK
CurrentReadingCelsius     : 40
SensorNumber              : 2
UpperThresholdCritical    : 82
UpperThresholdFatal       : 83
UpperThresholdNonCritical : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
LocationXmm               : 
LocationYmm               : 
LocationZmm               :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Get-HPEiLOTemperature -Connection $connection 

Temperature : {Temperature, Temperature, Temperature, Temperature...}
IP          : 10.20.30.40
Hostname    : xyz.example.com
Status      : OK

Temperature : {Temperature, Temperature, Temperature, Temperature...}
IP          : 10.20.30.41
Hostname    : xyz.example.com
Status      : OK

Temperature : {Temperature, Temperature, Temperature, Temperature...}
IP          : 10.20.30.42
Hostname    : xyz.example.com
Status      : OK
```

This cmdlet shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.TemperatureInfo[] or HPE.iLO.Response.Redfish.TemperatureInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

