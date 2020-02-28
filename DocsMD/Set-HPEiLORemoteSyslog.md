---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLORemoteSyslog

## SYNOPSIS
Sets the iLO Remote Syslog settings.

## SYNTAX

```
Set-HPEiLORemoteSyslog [-Connection] <Connection[]> [-RemoteSyslogEnabled <String[]>]
 [-RemoteSyslogServer <String[]>] [-RemoteSyslogPort <UInt32[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Set-HPEiLORemoteSyslog cmdlet allows iLO to send event notification messages to Syslog servers.
The iLO firmware Remote Syslog includes the IML and iLO Event Log.
An iLO license that supports this feature is required.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLORemoteSyslog -RemoteSyslogEnabled Yes -RemoteSyslogServer 10.20.30.40 -RemoteSyslogPort 344
```

This cmdlet sets the value of PowerCap on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLORemoteSyslog -RemoteSyslogEnabled Yes -RemoteSyslogServer 10.20.30.40 -RemoteSyslogPort 344
```

This cmdlet sets the value of PowerCap on iLO 4 and iLO 5 with the connection object passed as pipeline input.

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

### -RemoteSyslogEnabled
Determines whether iLO should send event notification messages to a Syslog server.
Valid values are Yes to enable sending event notification messages and No to disable sending of notification messages to Syslog server.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RemoteSyslogServer
Sets the IP address, FQDN, IPv6 name, or short name of the server running the Syslog service.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RemoteSyslogPort
Sets the port number through which the Syslog server listens.

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
System.String[]
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLORemoteSyslog]()

