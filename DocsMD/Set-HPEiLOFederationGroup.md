---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOFederationGroup

## SYNOPSIS
Modifies an existing iLO Federation group.

## SYNTAX

```
Set-HPEiLOFederationGroup [-Connection] <Connection[]> -GroupName <String[]> [-NewGroupName <String[]>]
 [-NewGroupKey <String[]>] [-UserConfigPrivilege <String[]>] [-RemoteConsolePrivilege <String[]>]
 [-VirtualMediaPrivilege <String[]>] [-iLOConfigPrivilege <String[]>] [-HostBIOSConfigPrivilege <String[]>]
 [-HostNICConfigPrivilege <String[]>] [-HostStorageConfigPrivilege <String[]>] [-LoginPrivilege <String[]>]
 [-SystemRecoveryConfigPrivilege <String[]>] [-VirtualPowerAndResetPrivilege <String[]>] [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOFederationGroup cmdlet is used to modify existing iLO Federation group membership and the associated privileges.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOFederationGroup -GroupName testgroup -NewGroupName newtestgroup -NewGroupKey testgroup123 -UserConfigPrivilege Yes -RemoteConsolePrivilege Yes -VirtualMediaPrivilege Yes -iLOConfigPrivilege Yes -LoginPrivilege Yes -VirtualPowerAndResetPrivilege Yes
```

This cmdlet assigns a new group name to an exisiting federation group on iLO 4 along with various privileges with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.2 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOFederationGroup -GroupName testgroup -NewGroupName newtestgroup -NewGroupKey testgroup123 -UserConfigPrivilege Yes -RemoteConsolePrivilege Yes -VirtualMediaPrivilege Yes -iLOConfigPrivilege Yes -LoginPrivilege Yes -VirtualPowerAndResetPrivilege Yes -HostBIOSConfigPrivilege Yes -HostNICConfigPrivilege Yes -HostStorageConfigPrivilege Yes -SystemRecoveryConfigPrivilege Yes
```

This cmdlet assigns a new group name to an exisiting federation group on iLO 5 along with various privileges with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOFederationGroup -GroupName testgroup -NewGroupName newtestgroup -NewGroupKey testgroup123 -UserConfigPrivilege Yes -RemoteConsolePrivilege Yes -VirtualMediaPrivilege Yes -iLOConfigPrivilege Yes -LoginPrivilege Yes -VirtualPowerAndResetPrivilege Yes
```

This cmdlet assigns a new group name to exisiting federation groups on multiple iLO 4 IPs along with various Privileges with an array of connection objects passed as pipeline input.

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
The iLO federation existing group name to be changed.

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
The new name for the federation group.

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

### -NewGroupKey
The password to set for the group.

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
Aliases : RemoteConsPriv

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
Aliases : ConfigiLOPriv

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

### -HostBIOSConfigPrivilege
Enables or disables members of a group to configure Host BIOS Settings.
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

### -HostNICConfigPrivilege
Enables or disables members of a group to configure Host NIC settings.
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

### -HostStorageConfigPrivilege
Enables or disables members of a group to configure Host Storage Settings.
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

### -SystemRecoveryConfigPrivilege
Enables or disables members of a group to configure System Recovery Configuration Privilege.
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
Aliases : ResetServerPriv

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: ResetServerPriv
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
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error for any missing required parameters.

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

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOFederationGroup]()

[Add-HPEiLOFederationGroup]()

[Remove-HPEiLOFederationGroup]()

