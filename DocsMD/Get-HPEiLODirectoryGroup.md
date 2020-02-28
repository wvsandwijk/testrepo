---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLODirectoryGroup

## SYNOPSIS
Gets the Directory Group user information.

## SYNTAX

```
Get-HPEiLODirectoryGroup [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLODirectoryGroup gets the Directory Group information.
This cmdlet is supported on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLODirectorySetting

PS C:\> $out

GroupAccountInfo : {Administrators, Authenticated Users}
IP               : 10.20.30.40
Hostname         : abcd.com
Status           : OK
StatusInfo       :

PS C:\> $out.GroupAccountInfo

GroupName                     : Administrators
GroupSID                      : 
iLOConfigPrivilege            : Yes
LoginPrivilege                : Yes
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualPowerAndResetPrivilege : Yes
VirtualMediaPrivilege         : Yes

GroupName                     : Authenticated Users
GroupSID                      : S-1-5-11
iLOConfigPrivilege            : No
LoginPrivilege                : Yes
RemoteConsolePrivilege        : No
UserConfigPrivilege           : No
VirtualPowerAndResetPrivilege : No
VirtualMediaPrivilege         : No
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLODirectoryGroup -Connection $connection

GroupAccountInfo : {Administrators, Authenticated Users}
IP               : 10.20.30.40
Hostname         : abcd.com
Status           : OK
StatusInfo       :

GroupAccountInfo : {Administrators, Authenticated Users}
IP               : 10.20.30.41
Hostname         : xyz.example.com
Status           : OK
StatusInfo       :
```

This cmdlet shows the output on iLO 4 with an array of iLO connection objects passed as named parameter.

### EXAMPLE 3
```
$con = Connect-HPEiLO 192.168.10.31 admin admin123 -DisableCertificateAuthentication

$dg = $con | Get-HPEiLODirectoryGroup

PS C:\Windows\System32\WindowsPowerShell\v1.0> $dg


GroupAccountInfo : {HPE.iLO.Response.Redfish.GroupAccountInfo}
IP               : 192.168.10.31
Hostname         : bl460cgen10-03.powershvpn.com
Status           : OK
StatusInfo       : 

PS C:\Windows\System32\WindowsPowerShell\v1.0> $dg.GroupAccountInfo
GroupName                     : tg5
GroupSID                      : 
iLOConfigPrivilege            : Yes
LoginPrivilege                : Yes
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualPowerAndResetPrivilege : Yes
VirtualMediaPrivilege         : Yes
HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : Yes
HostStorageConfigPrivilege    : Yes
SystemRecoveryConfigPrivilege : No
```

This cmdlet shows the output on iLO5 with an iLO connection.

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

### HPE.iLO.Response.RIBCL.DirectoryGroupInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLODirectoryGroup]()

[Set-HPEiLODirectoryGroup]()

[Remove-HPEiLODirectoryGroup]()

