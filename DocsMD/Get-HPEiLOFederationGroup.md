---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFederationGroup

## SYNOPSIS
Retrieves a list of all iLO Federation group names.

## SYNTAX

```
Get-HPEiLOFederationGroup [-Connection] <Connection[]> [-GroupName <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOFederationGroup cmdlet retrieves a list of all iLO Federation group names.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $obj = ,$connection | Get-HPEiLOFederationGroup

PS C:\> $obj | fl

FederationGroup : {HPE.iLO.Response.RIBCL.FederationGroup, 
                  HPE.iLO.Response.RIBCL.FederationGroup, 
                  HPE.iLO.Response.RIBCL.FederationGroup}
IP              : 10.20.30.1
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

PS C:\> $obj.FederationGroup

GroupName                     : DEFAULT
AdminPrivilege                : No
RemoteConsolePrivilege        : No
VirtualMediaPrivilege         : No
iLOConfigPrivilege            : No
HostBIOSConfigPrivilege       : 
HostNICConfigPrivilege        : 
HostStorageConfigPrivilege    : 
LoginPrivilege                : Yes
SystemRecoveryConfigPrivilege : 
VirtualPowerAndResetPrivilege : No

GroupName                     : testgroup
AdminPrivilege                : Yes
RemoteConsolePrivilege        : Yes
VirtualMediaPrivilege         : Yes
iLOConfigPrivilege            : Yes
HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : No
HostStorageConfigPrivilege    : No
LoginPrivilege                : Yes
SystemRecoveryConfigPrivilege : Yes
VirtualPowerAndResetPrivilege : Yes
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $obj = Get-HPEiLOFederationGroup -Connection $connection

PS C:\> $obj | fl

FederationGroup : {HPE.iLO.Response.Redfish.FederationGroup, 
                  HPE.iLO.Response.Redfish.FederationGroup}
IP              : 10.20.30.2
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

PS C:\> $obj.FederationGroup

GroupName                     : DEFAULT
AdminPrivilege                : No
RemoteConsolePrivilege        : No
VirtualMediaPrivilege         : No
iLOConfigPrivilege            : No
HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : Yes
HostStorageConfigPrivilege    : No
LoginPrivilege                : Yes
SystemRecoveryConfigPrivilege : Yes
VirtualPowerAndResetPrivilege : No

GroupName                     : testgroup
AdminPrivilege                : Yes
RemoteConsolePrivilege        : Yes
VirtualMediaPrivilege         : Yes
iLOConfigPrivilege            : Yes
HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : Yes
HostStorageConfigPrivilege    : No
LoginPrivilege                : Yes
SystemRecoveryConfigPrivilege : No
VirtualPowerAndResetPrivilege : Yes
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> $obj = ,$connection | Get-HPEiLOFederationGroup

PS C:\> $obj | fl


FederationGroup : {HPE.iLO.Response.RIBCL.FederationGroup, 
                  HPE.iLO.Response.RIBCL.FederationGroup, 
                  HPE.iLO.Response.RIBCL.FederationGroup}
IP              : 10.20.30.1
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

FederationGroup : {HPE.iLO.Response.Redfish.FederationGroup, 
                  HPE.iLO.Response.Redfish.FederationGroup}
IP              : 10.20.30.2
Hostname        : xyz.example.com
Status          : OK
StatusInfo      :
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

### -GroupName
Specifies the group whose complete privilege details have to be retrieved.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.FederationGroupList[] or HPE.iLO.Response.Redfish.FederationGroupList[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLOFederationGroup]()

[Remove-HPEiLOFederationGroup]()

[Set-HPEiLOFederationGroup]()

