---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSessionInfo

## SYNOPSIS
Gets the Session detail.

## SYNTAX

```
Get-HPEiLOSessionInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSessionInfo cmdlet gets the Session detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLOSessionInfo

PS C:\> $out

Session    : {HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session, 
             HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session}
IP         : 10.20.30.2
Hostname   : abcd.com
Status     : OK
StatusInfo : 

PS C:\> $out.Session

UserName       : admin
Id             : admin000000005a5ed5ea7e76c868
AccessTime     : 2018-01-17T06:10:40Z
LoginTime      : 2018-01-17T04:49:46Z
UserExpires    : 2018-01-17T06:40:40Z
UserIP         : 1.1.1.1
UserTag        : Web UI
UserType       : Local
UserPrivileges : 
MySession      : False

UserName       : admin
Id             : admin000000005a5ee48c4e5603cd
AccessTime     : 2018-01-17T06:11:44Z
LoginTime      : 2018-01-17T05:52:12Z
UserExpires    : 2018-01-17T06:41:44Z
UserIP         : 1.1.1.1
UserTag        : REST
UserType       : Local
UserPrivileges : HPE.iLO.Response.Redfish.Privileges
MySession      : True

UserName       : admin
Id             : admin000000005a5ee1575126e92d
AccessTime     : 2018-01-17T05:54:04Z
LoginTime      : 2018-01-17T05:38:31Z
UserExpires    : 2018-01-17T06:24:04Z
UserIP         : 1.2.3.3
UserTag        : REST
UserType       : Local
UserPrivileges : 
MySession      : False

UserName       : admin
Id             : admin000000005a5ee50c8c8b434a
AccessTime     : 2018-01-17T05:55:05Z
LoginTime      : 2018-01-17T05:54:20Z
UserExpires    : 2018-01-17T06:25:05Z
UserIP         : 1.2.2.2
UserTag        : REST
UserType       : Local
UserPrivileges : 
MySession      : False

PS C:\> $out.Session[1].UserPrivileges

HostBIOSConfigPriv       : True
HostNICConfigPriv        : True
HostStorageConfigPriv    : True
LoginPriv                : True
RemoteConsolePriv        : True
SystemRecoveryConfigPriv : False
UserConfigPriv           : True
VirtualMediaPriv         : True
VirtualPowerAndResetPriv : True
iLOConfigPriv            : True
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOSessionInfo -Connection $connection

Session    : {HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session, 
             HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session}
IP         : 10.20.30.1
Hostname   : xyz.example.com
Status     : OK
StatusInfo : 

Session    : {HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session, 
             HPE.iLO.Response.Redfish.Session, HPE.iLO.Response.Redfish.Session}
IP         : 10.20.30.2
Hostname   : abcd.com
Status     : OK
StatusInfo :
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
Accepted values: PSObject, RawRequest, RawResponse

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

### HPE.iLO.Response.Redfish.SessionInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

