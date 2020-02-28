---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFan

## SYNOPSIS
Gets the Fan health details from the server.

## SYNTAX

```
Get-HPEiLOFan [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOFan cmdlet gets the Fan health details of the server.
The details are returned for the list of fans.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOFan

PS C:\> $obj | fl

Fans       : {HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan, 
             HPE.iLO.Response.RIBCL.Fan, HPE.iLO.Response.RIBCL.Fan...}
IP         : 10.20.30.2
Status     : OK
StatusInfo : 

PS C:\> $obj.Fans

Name            : Fan 1
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 2
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 3
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 4
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 5
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 6
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 7
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 8
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 9
Location        : System
SpeedPercentage : 21
Status          : OK

Name            : Fan 10
Location        : System
SpeedPercentage : 21
Status          : OK
```

This example shows the usage of the cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.3 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOFan

PS C:\> $obj | fl

Fans       : {HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan, 
             HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan...}
IP         : 10.20.30.3
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PS C:\> $obj.Fans

HotPluggable              : Yes
Redundant                 : No
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 1
Location                  : System
SpeedPercentage           : 13
Status                    : OK

HotPluggable              : Yes
Redundant                 : No
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 2
Location                  : System
SpeedPercentage           : 13
Status                    : OK

HotPluggable              : Yes
Redundant                 : Yes
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 3
Location                  : System
SpeedPercentage           : 13
Status                    : OK

HotPluggable              : Yes
Redundant                 : Yes
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 4
Location                  : System
SpeedPercentage           : 13
Status                    : OK

HotPluggable              : Yes
Redundant                 : Yes
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 5
Location                  : System
SpeedPercentage           : 13
Status                    : OK

HotPluggable              : Yes
Redundant                 : Yes
CorrelatableID            : 
LowerThresholdCritical    : 
LowerThresholdFatal       : 
LowerThresholdNonCritical : 
MaximumValue              : 
MinimumValue              : 
PhysicalContext           : 
UpperThresholdCritical    : 
UpperThresholdFatal       : 
UpperThresholdNonCritical : 
Name                      : Fan 6
Location                  : System
SpeedPercentage           : 13
Status                    : OK
```

This example shows the usage of the cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Get-HPEiLOFan -Connection $connection | fl

Fans       : {HPE.iLO.Response.RIBCL.Fan}
IP       : 10.20.30.1
Hostname : xyz.example.com
Status   : OK
StatusInfo :

Fans       : {HPE.iLO.Response.RIBCL.Fan}
IP       : 10.20.30.2
Hostname : xyz.example.com
Status   : OK
StatusInfo :

Fans       : {HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan, 
             HPE.iLO.Response.Redfish.Fan, HPE.iLO.Response.Redfish.Fan...}
IP         : 10.20.30.3
Hostname   : abcd.com
Status     : OK
StatusInfo :
```

This example shows the usage of the cmdlet on iLO 4 and iLO 5 with an array of connection objects passed as pipeline input.

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

### HPE.iLO.Response.RIBCL.FanInformation[] or HPE.iLO.Response.Redfish.FanInformation[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

