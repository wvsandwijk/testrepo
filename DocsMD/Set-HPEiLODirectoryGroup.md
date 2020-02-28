---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLODirectoryGroup

## SYNOPSIS
Modifies the Directory group user.

## SYNTAX

```
Set-HPEiLODirectoryGroup [-Connection] <Connection[]> -GroupName <String[]> [-NewGroupName <String[]>]
 [-GroupSID <String[]>] [-UserConfigPrivilege <String[]>] [-RemoteConsolePrivilege <String[]>]
 [-VirtualMediaPrivilege <String[]>] [-iLOConfigPrivilege <String[]>] [-LoginPrivilege <String[]>]
 [-VirtualPowerAndResetPrivilege <String[]>] [-HostBIOSConfigPrivilege <String[]>]
 [-HostNICConfigPrivilege <String[]>] [-HostStorageConfigPrivilege <String[]>]
 [-SystemRecoveryConfigPrivilege <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLODirectoryGroup cmdlet modifies the Directory group user.
This cmdlet is supported on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLODirectoryGroup -GroupName admin -NewGroupName admin123 -GroupSID 1-2-3-4 -UserConfigPrivilege Yes -iLOConfigPrivilege Yes -RemoteConsolePrivilege No -VirtualMediaPrivilege Yes -VirtualPowerAndResetPrivilege Yes -LoginPrivilege Yes
```

This cmdlet assigns a new group name to an exisiting directory group on iLO 4 along with various Privileges with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Set-HPEiLODirectoryGroup -Connection $connection -GroupName admin -NewGroupName admin123 -GroupSID 1-2-3-4 -UserConfigPrivilege Yes -iLOConfigPrivilege Yes -RemoteConsolePrivilege No -VirtualMediaPrivilege Yes -VirtualPowerAndResetPrivilege Yes -LoginPrivilege Yes
```

This cmdlet assigns a new group name to an exisiting directory group on iLO 4 along with various privileges with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

$o = $connection | Set-HPEiLODirectoryGroup -RemoteConsolePrivilege Yes -NewGroupName newtg -GroupName tg -UserConfigPrivilege Yes -VirtualMediaPrivilege Yes -VirtualPowerAndResetPrivilege Yes -iLOConfigPrivilege Yes -LoginPrivilege Yes -HostBIOSConfigPrivilege Yes -HostNICConfigPrivilege Yes -HostStorageConfigPrivilege Yes
```

This cmdlet renames the existing group name to a new directory group on iLO5 along with various privileges with the connection object passed as pipeline input.

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
Specifies the group name that has to be modified.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NewGroupName
Specifies the new group name for the existing group name.

Note: If you want to modify only the privileges then do not use NewGroupName parameter.
Instead, mention only the group name that needs change.

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

### -GroupSID
Specifies the SID for a group container.

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

### -UserConfigPrivilege
Enables or disables members of a group to add, edit, and delete iLO user accounts.
The supported values are Yes and No.

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

### -RemoteConsolePrivilege
Enables or disables members of a group to remotely access the host system Remote Console, including video, keyboard, and mouse control.
The supported values are Yes and No.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: RemoteConsPriv
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VirtualMediaPrivilege
Enables or disables members of a group to use scripted Virtual Media with the local iLO system.
The supported values are Yes and No.

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

### -iLOConfigPrivilege
Enables or disables members of a group to configure most iLO settings, including security settings, and to remotely update firmware.
The supported values are Yes and No.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: ConfigiLOPriv
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LoginPrivilege
Enables or disables members of a group to log in to iLO.
The supported values are Yes and No.

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

### -VirtualPowerAndResetPrivilege
Enables or disables members of a group to power-cycle or reset the local iLO system.
The supported values are Yes and No.

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

### -HostBIOSConfigPrivilege
Enables directory users to configure the host BIOS settings by using the UEFI System Utilities.

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

### -HostNICConfigPrivilege
Enables directory users to configure the host NIC settings.

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

### -HostStorageConfigPrivilege
Enables directory users to configure the host storage settings.

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

### -SystemRecoveryConfigPrivilege
Enables directory users to manage the System Recovery Set.

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
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error prompt for any required parameter that is missing.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
If you want to modify only the privileges then do not use NewGroupName parameter.

$o = $con | Set-HPEiLODirectoryGroup -GroupName y3 -iLOConfigPrivilege Yes -HostNICConfigPrivilege Yes

If the logged in user has insufficient privileges to change permissions of other users, then this cmdlet will return status as "PARTIAL".
The cmdlet successfully creates the new user but does not have the permission to add privileges.
This is because adding user and adding privileges is handled by two different Redfish URI's.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLODirectoryGroup]()

[Get-HPEiLODirectoryGroup]()

[Remove-HPEiLODirectoryGroup]()

