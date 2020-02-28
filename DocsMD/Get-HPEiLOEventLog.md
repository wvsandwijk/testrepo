---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOEventLog

## SYNOPSIS
Gets the iLO event logs.

## SYNTAX

```
Get-HPEiLOEventLog [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOEventLog cmdlet gets the iLO event logs.
The response includes all of the events recorded in the order that they occurred.
Events are not sorted by severity or other criteria.
Each event includes a common set of attributes:
  · Severity - Indicates the importance of the error and how it might impact server or iLO availability:
    -\> FAILED indicates a problem or component failure that might impact operational time if it is not addressed.
    -\> CAUTION indicates an event that is not expected during normal system operation.
This might not indicate a platform issue.
    -\> DEGRADED indicates the device or subsystem is operating at a reduced capacity.
    -\> REPAIRED indicates that an event or component failure has been addressed.
    -\> INFORMATIONAL indicates that something noteworthy occurred, but operational time is not impacted.
    -\> OK indicates that nothing noteworthy occurred.

· Created - Indicates when this event first occurred.

.
Id - Indicates an identifier for the resource (available only on Gen10 servers).

.
Name - Indicates the name of the resource or array element (available only on Gen10 servers).

.
EntryType - Indicates the log entry type (available only on Gen10 servers).

· Source - Indicates the subsystem that generated the event, and can include iLO, environment, power, system error, rack infrastructure, and more.

· Updated - Indicates the most recent time this event was modified.

.
EventCode - Indicates the hexadecimal event code.

.
Categories - Indicates the log entry categories (available only on Gen10 servers).

.
Class - Indicates the IML event class (available only on Gen10 servers).

.
EventNumber - Indicates event log identification number.
Events are numbered in the order in which they are generated (available only on Gen10 servers).

.
LearnMoreLink - Indicates the HPSC link for troubleshooting information (available only on Gen10 servers).

.
RecommendedAction - Indicates the recommended action for the event (available only on Gen10 servers).

· Count - Indicates the number of times a duplicate event happened.

· Message - Indicates the nature of the event and all recorded details.

.
OemRecordFormat - Indicates the format of an OEM record (available only on Gen10 servers).

.
Repaired - Indicates the repaired status of the IML event.

. 
Destination- The destination host name or IP address of the remote server that recevied the service event (available only on Gen10 servers).

. 
SubmitStatus- The service event log submission status.(available only on Gen10 servers)

. 
Identifier - The unique identifier of the service event (available only on Gen10 servers).

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOEventLog

PS C:\> $obj

Description : iLO 4 Event Log
EventLog    : {HPE.iLO.Response.RIBCL.LogEntry, HPE.iLO.Response.RIBCL.LogEntry, 
              HPE.iLO.Response.RIBCL.LogEntry, HPE.iLO.Response.RIBCL.LogEntry...}
IP          : 10.20.30.2
Hostname    : xyz.example.com
Status      : OK 
StatusInfo  : 

PS C:\> $obj.EventLog

Count     : 3
Created   : 04/06/2001 00:18
EventCode : 144
Message   : XML login: admin - 15.146.44.58 (DNS name not found).
Severity  : Informational
Source    : #ILO 4
Updated   : 04/06/2001 00:18

Count     : 3
Created   : 04/06/2001 00:18
EventCode : 145
Message   : XML logout: admin - 15.146.44.58(DNS name not found).
Severity  : Informational
Source    : #ILO 4
Updated   : 04/06/2001 00:18
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOEventLog

PS C:\> $obj

Description : iLO Event Logs view
EventLog    : {HPE.iLO.Response.Redfish.LogEntry, HPE.iLO.Response.Redfish.LogEntry, 
              HPE.iLO.Response.Redfish.LogEntry, HPE.iLO.Response.Redfish.LogEntry...}
IP          : 10.20.30.40
Hostname    : xyz.example.com
Status      : OK 

PS C:\> $obj.EventLog

Id                : 1
Name              : iLO Event Log
Categories        : {Security, Administration}
EntryType         : Oem
EventNumber       : 10278
OemRecordFormat   : Hpe-iLOEventLog
LearnMoreLink     : 
RecommendedAction : 
Repaired          : 
Destination       : 
Count             : 3
Created           : 2017-04-04T15:22:06Z
EventCode         : 1017
Class             : 35
Message           : Browser login: admin - 16.85.88.14(DNS name not found).
Severity          : OK
Updated           : 2017-04-04T15:22:28Z
SubmitStatus      : 
Identifier        : 

Id                : 2
Name              : iLO Event Log
Categories        : {Security, Administration}
EntryType         : Oem
EventNumber       : 10279
OemRecordFormat   : Hpe-iLOEventLog
LearnMoreLink     : 
RecommendedAction : 
Repaired          : 
Destination       : 
Count             : 3
Created           : 2017-04-04T15:22:06Z
EventCode         : 1018
Class             : 35
Message           : Browser logout: admin - 16.85.88.14(DNS name not found).
Severity          : OK
Updated           : 2017-04-04T15:22:28Z
SubmitStatus      : 
Identifier        :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOEventLog

PS C:\> $obj

Description : iLO 4 Event Log
EventLog    : {HPE.iLO.Response.RIBCL.LogEntry, HPE.iLO.Response.RIBCL.LogEntry, 
              HPE.iLO.Response.RIBCL.LogEntry, HPE.iLO.Response.RIBCL.LogEntry...}
IP          : 10.20.30.40
Hostname    : xyz.example.com
Status      : OK 
StatusInfo  : 

Description : iLO Event Logs view
EventLog    : {HPE.iLO.Response.Redfish.LogEntry, HPE.iLO.Response.Redfish.LogEntry, 
              HPE.iLO.Response.Redfish.LogEntry, HPE.iLO.Response.Redfish.LogEntry...}
IP          : 10.20.30.41
Hostname    : xyz.example.com
Status      : OK 
StatusInfo  :
```

This example shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.Connection[]System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.EventLogInfo[] or HPE.iLO.Response.Redfish.EventLogInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Clear-HPEiLOEventLog]()

[Connect-HPEiLO]()

