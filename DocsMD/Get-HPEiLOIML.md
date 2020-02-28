---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOIML

## SYNOPSIS
Gets the integrated management logs.

## SYNTAX

```
Get-HPEiLOIML [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOIML cmdlet gets the integrated management logs.
The response includes all of the events recorded in the order that they occurred.
Events are not sorted by severity or other criteria.
Each event includes a common set of attributes:

•    Severity - Indicates the importance of the error and how it might impact server or iLO availability.
Possible output values are:
              o FAILED - Indicates a problem or component failure that might impact operational time if it is not addressed.
              o CAUTION - Indicates an event that is not expected during normal system operation.
This might not indicate a platform issue.
              o DEGRADED - Indicates the device or subsystem is operating at a reduced capacity.
              o REPAIRED - Indicates that an event or component failure has been addressed.
              o INFORMATIONAL - Indicates that something noteworthy occurred, but the operational time is not impacted.

•    Created - Indicates when this event first occurred.

•    Count - Indicates the number of times a duplicate event happened.

•    Categories - Indicates the log entry categories.(available only on Gen10 servers)

•    Class - Indicates the IML event class.(available only on Gen10 servers)

•    EventCode - Indicates the IML event code.

•    Destination- The destination host name or IP address of the remote server that recevied the service event (available only on Gen10 servers).

•    SubmitStatus- The service event log submission status (available only on Gen10 servers).

•    Identifier - The unique identifier of the service event (available only on Gen10 servers).

•    EventNumber - Indicates the event log identification number.
Events are numbered in the order in which they are generated.

•    EntryType - Indicates the log entry type.

•    Id - Uniquely identifies the resource (available only on Gen10 servers).

•    LearnMoreLink - The HPSC link for troubleshooting information (available only on Gen10 servers).

•    Message - indicates the nature of the event and all recorded details.

•    Name - The name of the resource.

•    RecommendedAction - Indicates the recommended action for the event(available only on Gen10 servers)

•    Repaired - Indicates the repaired status of the IML event.

•    Source - Indicates the subsystem that generated the event and can include iLO, environment, power, system error, rack infrastructure, and more.

•    Updated - Indicates the date and time of the latest log entry update.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $obj = ,$connection | Get-HPEiLOIML

PS C:\> $obj | fl


Description : Integrated Management Log
IMLLog      : {HPE.iLO.Response.RIBCL.LogEntry}
IP          : 10.20.30.1
Hostname    : xyz.example.com
Status      : OK
StatusInfo  : 

PS C:\> $obj.IMLLog


Count     : 1
Created   : 10/02/2017 05:25
EventCode : 1
Class     : 33
Message   : IML Cleared (iLO 4 user:admin)
Severity  : Informational
Source    : Maintenance
Updated   : 10/02/2017 05:25
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $obj = ,$connection | Get-HPEiLOIML

PS C:\> $obj | fl

Description : Integrated Management Log
IMLLog      : {HPE.iLO.Response.RIBCL.LogEntry}
IP          : 10.20.30.2
Hostname    : xyz.example.com
Status      : OK
StatusInfo  : 

PS C:\> $obj.IMLLog


Count     : 1
Created   : 10/02/2017 05:25
EventCode : 1
Class     : 33
Message   : IML Cleared (iLO 4 user:admin)
Severity  : Informational
Source    : Maintenance
Updated   : 10/02/2017 05:25
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> $obj = ,$connection | Get-HPEiLOIML

PS C:\> $obj | fl


Description : Integrated Management Log
IMLLog      : {HPE.iLO.Response.RIBCL.LogEntry}
IP          : 10.20.30.1
Hostname    : xyz.example.com
Status      : OK
StatusInfo  : 

Description : Integrated Management Log
IMLLog      : {HPE.iLO.Response.RIBCL.LogEntry}
IP          : 10.20.30.2
Hostname    : xyz.example.com
Status      : OK
StatusInfo  :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as pipeline input.

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

### HPE.iLO.Response.RIBCL.IMLInfo[] or HPE.iLO.Response.Redfish.IMLInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Clear-HPEiLOIML]()

