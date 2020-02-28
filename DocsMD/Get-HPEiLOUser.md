---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOUser

## SYNOPSIS
Gets the information of all local iLO users.

## SYNTAX

```
Get-HPEiLOUser [-Connection] <Connection[]> [-LoginName <String[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOUser cmdlet gets the information for all local users, excluding the password.
The LoginName parameter can be used to retrieve the information of the corresponding user.
In case of iLO 4 servers, you must have the Administator User Accounts privilege to get other user account details.
If not, you can only view their individual account information.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOUser

PS C:\> $obj | fl

UserInformation : {HPE.iLO.Response.RIBCL.UserDetail, HPE.iLO.Response.RIBCL.UserDetail}
IP              : 10.20.30.40
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

PS C:\>  $obj.UserInformation

LoginName                     : Administrator
UserName                      : Administrator
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : Yes
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes

LoginName                     : user
UserName                      : user
RemoteConsolePrivilege        : No
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : No
VirtualPowerAndResetPrivilege : No
iLOConfigPrivilege            : No

LoginName                     : admin1
UserName                      : admin1
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : Yes
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOUser -LoginName admin | fl

LoginName                     : admin
UserName                      : admin
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : Yes
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes
IP                            : 10.20.30.40
Hostname                      : xyz.example.com
Status                        : OK
StatusInfo      :
```

This cmdlet shows the output on iLO 4 when the UserLogin parameter is provided and the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOUser -LoginName admin

LoginName                     : admin
UserName                      : admin
HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : No
HostStorageConfigPrivilege    : Yes
ResetServerPrivilege          : Yes
RemoteConsolePrivilege        : Yes
SystemRecoveryConfigPrivilege : No
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : No
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes
ServiceAccount                : Yes
IP                            : 10.20.30.40
Hostname                      : xyz.example.com
Status                        : OK
StatusInfo      :
```

This cmdlet shows the output on iLO 5, with the connection object passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\>Get-HPEiLOUser -Connection  $connection | fl

UserInformation : {HPE.iLO.Response.RIBCL.UserDetail, HPE.iLO.Response.RIBCL.UserDetail}
IP              : 10.20.30.40
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

UserInformation : {HPE.iLO.Response.RIBCL.UserDetail, HPE.iLO.Response.RIBCL.UserDetail}
IP              : 10.20.30.41
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

UserInformation : {HPE.iLO.Response.Redfish.UserDetail, HPE.iLO.Response.Redfish.UserDetail}
IP              : 10.20.30.42
Hostname        : xyz.example.com
Status          : OK
StatusInfo      :
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

### -LoginName
LoginName is the login name of the user account for which the details have to be retrieved.
This parameter is case sensitive.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: GetUserLogin

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

### HPE.iLO.Response.RIBCL.User[] or HPE.iLO.Response.Redfish.User[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOUser]()

