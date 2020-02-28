---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLODirectorySetting

## SYNOPSIS
Gets the Directory Setting detail.

## SYNTAX

```
Get-HPEiLODirectorySetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLODirectorySetting gets the Directory Setting detail.
This cmdlet is supported on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLODirectorySetting

PS C:\> $out[0]

DirectoryServerAddress      : 
DirectoryServerPort         : 636
GenericLDAPEnabled          : No
LDAPDirectoryAuthentication : Disabled
LocalUserAccountEnabled     : Yes
LOMObjectDN                 : 
UserContextInfo             : {HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo...}
IP                          : 10.20.30.40
Hostname                    : abcd.com
Status                      : OK
StatusInfo                  : 

PS C:\> $out[1]

DirectoryServerAddress      : 
DirectoryServerPort         : 236
GenericLDAPEnabled          : Yes
LDAPDirectoryAuthentication : DefaultSchema
LocalUserAccountEnabled     : Yes
LOMObjectDN                 : ldapuser
UserContext                 : {CN=iLOUser,DC=powershvpn, DC=com}
IP                          : 10.20.30.41
Hostname                    : bl460cgen10-03.powershvpn.com
Status                      : OK
StatusInfo                  : 

PS C:\> $out[0].UserContextInfo | fl

UserContextIndex : 1
UserContext      : 

UserContextIndex : 2
UserContext      : 

UserContextIndex : 3
UserContext      : 

UserContextIndex : 4
UserContext      : 

UserContextIndex : 5
UserContext      : 

UserContextIndex : 6
UserContext      : 

UserContextIndex : 7
UserContext      : 

UserContextIndex : 8
UserContext      : 

UserContextIndex : 9
UserContext      : 

UserContextIndex : 10
UserContext      : 

UserContextIndex : 11
UserContext      : 

UserContextIndex : 12
UserContext      : 

UserContextIndex : 13
UserContext      : 

UserContextIndex : 14
UserContext      : 

UserContextIndex : 15
UserContext      :
```

This cmdlet shows the output on iLO4 and iLO5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLODirectorySetting -Connection $connection

DirectoryServerAddress      : 
DirectoryServerPort         : 636
GenericLDAPEnabled          : No
LDAPDirectoryAuthentication : Disabled
LocalUserAccountEnabled     : Yes
LOMObjectDN                 : 
UserContextInfo             : {HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo...}
IP                          : 10.20.30.40
Hostname                    : abcd.com
Status                      : OK
StatusInfo                  : 

DirectoryServerAddress      : 
DirectoryServerPort         : 636
GenericLDAPEnabled          : No
LDAPDirectoryAuthentication : Disabled
LocalUserAccountEnabled     : Yes
LOMObjectDN                 : 
UserContextInfo             : {HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo, 
                              HPE.iLO.Response.RIBCL.UserContextInfo...}
IP                          : 10.20.30.41
Hostname                    : xyz.example.com
Status                      : OK
StatusInfo                  :
```

This cmdlet shows the output on iLO4 with an array of iLO connection objects passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.41 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLODirectorySetting

PS C:\> $out

DirectoryServerAddress      : 
DirectoryServerPort         : 236
GenericLDAPEnabled          : Yes
LDAPDirectoryAuthentication : DefaultSchema
LocalUserAccountEnabled     : Yes
LOMObjectDN                 : ldapuser
UserContext                 : {CN=iLOUser,DC=powershvpn, DC=com}
IP                          : 10.20.30.41
Hostname                    : bl460cgen10-03.powershvpn.com
Status                      : OK
StatusInfo                  : 

PS C:\> $out.UserContext
CN=iLOUser,DC=powershvpn, DC=com
```

This cmdlet shows the output on iLO5 with the connection object passed as pipeline input.

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

### HPE.iLO.Response.RIBCL.DirectorySettingInfo[]
### HPE.iLO.Response.Redfish.DirectorySettingInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLODirectorySetting]()

