---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLORemoteSupportServiceEventLog

## SYNOPSIS
Gets Service Event logs.

## SYNTAX

```
Get-HPEiLORemoteSupportServiceEventLog [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets Service Event logs.
This cmdlet gets log entries only if Remote Support is configured on the target server.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $con = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32> $e = $con | Get-HPEiLORemoteSupportServiceEventLog

PS C:\Windows\system32> $e
IP              : 192.168.10.34
Hostname        : xl170rgen10-02.powershvpn.com
Status          : OK
StatusInfo      : 
ServiceEventlog : {HPE.iLO.Response.Redfish.ServiceEventLog, HPE.iLO.Response.Redfish.ServiceEventLog}

PS C:\Windows\system32> $e.ServiceEventlog
Id           : 1
Created      : 03/02/2017 03:15:50
Severity     : OK
Categories   : {HPQTEST0001}
Destination  : 192.168.1.122:7906
EventNumber  : 1
Identifier   : c84bdb60-bfe9-e611-827a-e0071b8813aa
SubmitStatus : Device is not registered

Id           : 2
Created      : 03/02/2017 03:23:04
Severity     : OK
Categories   : {HPQTEST0001}
Destination  : 192.168.1.122:7906
EventNumber  : 1
Identifier   : eaf575b5-c2e9-e611-88ce-e0071b8813aa
SubmitStatus : Device is not registered
```

Gets Service event log entries from a remote support configured iLO 5 server.

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

### HPE.iLO.Response.Redfish.RemoteSupportServiceEventLog[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

[Clear-HPEiLORemoteSupportServiceEventLog]()

