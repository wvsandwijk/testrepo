---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFederationPeer

## SYNOPSIS
Gets Federation Peer information.

## SYNTAX

```
Get-HPEiLOFederationPeer [-Connection] <Connection[]> [-GroupName <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Gets Federation Peer inforamtion on the target iLO and is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.31 admin admin123 -DisableCertificateAuthentication -Verbose
PS C:\Windows\system32> $p = $con | Get-HPEiLOFederationPeers
PS C:\Windows\system32> $p
Peers      : {HPE.iLO.Response.Redfish.Peers}
IP         : 192.168.10.31
Hostname   : xl170rgen10-02.powershvpn.com
Status     : OK
StatusInfo : 
PS C:\Windows\system32> $p.Peers
Id      Name    PeerInfo                                                                                                                                                
--      ----    --------                                                                                                                                                
DEFAULT DEFAULT {240e419f-e157-5fac-a32e-08c941ae569f, 0505df7c-f607-59f3-a498-b3c386a9b805, 53d429e2-9617-53f3-88f2-84ad6ad9bae6, 
e76880a7-0129-5b44-828a-46a5eb599f93}
PS C:\Windows\system32> $p.Peers[0].PeerInfo
HttpErrorCode    : 0
ManagerIPAddress : 192.168.10.8
Time             : 2018-07-03T04:29:06Z
URL              : http://192.168.10.8:801/
UUID             : 240e419f-e157-5fac-a32e-08c941ae569f

HttpErrorCode    : 0
ManagerIPAddress : 192.168.10.9
Time             : 2018-07-03T04:22:47Z
URL              : http://192.168.10.9:80/
UUID             : 0505df7c-f607-59f3-a498-b3c386a9b805

HttpErrorCode    : 0
ManagerIPAddress : 192.168.10.28
Time             : 2018-07-03T04:29:06Z
URL              : http://192.168.10.28:80/
UUID             : 53d429e2-9617-53f3-88f2-84ad6ad9bae6

HttpErrorCode    : 0
ManagerIPAddress : 192.168.10.23
Time             : 2018-07-03T04:28:47Z
URL              : http://192.168.10.23:80/
UUID             : e76880a7-0129-5b44-828a-46a5eb599f9
```

Gets Federation peer information on iLO 5.

### EXAMPLE 2
```
PS C:\Windows\system32>$con = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32>$p = $con | Get-HPEiLOFederationPeer -GroupName Test123

PS C:\Windows\system32> $p
Id         : Test123
Name       : Test123
PeerInfo   : {HPE.iLO.Response.Redfish.PeerInfo, HPE.iLO.Response.Redfish.PeerInfo, HPE.iLO.Response.Redfish.PeerInfo, HPE.iLO.Response.Redfish.PeerInfo}
IP         : 192.168.10.34
Hostname   : xl170rgen10-02.powershvpn.com
Status     : OK
StatusInfo : 

PS C:\Windows\system32> $p.PeerInfo
HttpErrorCode    : 0
ManagerIPAddress : fe80::9af2:b3ff:fe37:52e6
Time             : 2017-02-04T01:48:22Z
URL              : http://[fe80::9af2:b3ff:fe37:52e6]:80/
UUID             : f31344e0-2238-5119-bb96-d1641bd850d5

HttpErrorCode    : 0
ManagerIPAddress : fe80::7210:6fff:fe49:fe96
Time             : 2017-02-04T01:47:43Z
URL              : http://[fe80::7210:6fff:fe49:fe96]:80/
UUID             : d5442933-e623-505e-b8df-aec51671ac97

HttpErrorCode    : 0
ManagerIPAddress : fe80::fe15:b4ff:fe97:c6c8
Time             : 2017-02-04T01:48:11Z
URL              : http://[fe80::fe15:b4ff:fe97:c6c8]:80/
UUID             : b6364d8f-9eb0-5176-afb3-59636ada4010

HttpErrorCode    : 0
ManagerIPAddress : fe80::9618:82ff:fe03:3a70
Time             : 2017-02-04T01:48:31Z
URL              : http://[fe80::9618:82ff:fe03:3a70]:80/
UUID             : 55ba8586-ac8b-5ba2-b84d-163256daf212
```

Gets peer information of a specified group by name-Test123.

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

### -GroupName
Specifies the group name for which user wants to fetch peer's information.

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
## OUTPUTS

### HPE.iLO.Response.Redfish.FederationPeers[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

