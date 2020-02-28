---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOHealthSummary

## SYNOPSIS
Gets the health information summary of the host server.

## SYNTAX

```
Get-HPEiLOHealthSummary [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOHealthSummary cmdlet gets the health information summary for the server where the iLO is located.
The command gets the status of BIOS hardware, fans, memory, network, power supply, processors, storage, and temperature of the host.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOHealthSummary

BatteryStatus           : OK
BIOSHardwareStatus      : OK
FanStatus               : OK
FanRedundancy           : Redundant
MemoryStatus            : OK
NetworkStatus           : OK
PowerSuppliesStatus     : OK
PowerSuppliesRedundancy : Redundant
ProcessorStatus         : OK
StorageStatus           : OK
TemperatureStatus       : OK
IP                      : 10.20.30.40
Hostname                : abcd.com
Status                  : OK
StatusMessage           :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOHealthSummary

PS C:\> $obj

AgentlessManagementService : Unavailable
BIOSHardwareStatus         : OK
FanStatus                  : OK
FanRedundancy              : Redundant
MemoryStatus               : OK
NetworkStatus              : OK
PowerSuppliesStatus        : OK
PowerSuppliesRedundancy    : NonRedundant
PowerSuppliesMismatch      : No
ProcessorStatus            : OK
SmartStorageBatteryStatus  : 
StorageStatus              : Critical
TemperatureStatus          : OK
IP                         : 10.20.30.40
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 :
```

This cmdlet shows the output on iLO 5 with connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> $obj = Get-HPEiLOHealthSummary -Connection $connection 

AgentlessManagementService : Unavailable
BIOSHardwareStatus         : OK
FanStatus                  : OK
FanRedundancy              : Redundant
MemoryStatus               : OK
NetworkStatus              : OK
PowerSuppliesStatus        : OK
PowerSuppliesRedundancy    : NonRedundant
PowerSuppliesMismatch      : No
ProcessorStatus            : OK
SmartStorageBatteryStatus  : 
StorageStatus              : Critical
TemperatureStatus          : OK
IP                         : 10.20.30.40
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 : 

AgentlessManagementService : Unavailable
BIOSHardwareStatus         : OK
FanStatus                  : OK
FanRedundancy              : Redundant
MemoryStatus               : OK
NetworkStatus              : OK
PowerSuppliesStatus        : OK
PowerSuppliesRedundancy    : NonRedundant
PowerSuppliesMismatch      : No
ProcessorStatus            : OK
SmartStorageBatteryStatus  : 
StorageStatus              : Critical
TemperatureStatus          : OK
IP                         : 10.20.30.41
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of iLO connection objects passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.iLO4.HealthSummary[] or HPE.iLO.Response.Redfish.HealthSummary[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

