---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOUser

## SYNOPSIS
Adds a local user account to the iLO.

## SYNTAX

```
Add-HPEiLOUser [-Connection] <Connection[]> [-UserConfigPrivilege <String[]>]
 [-HostBIOSConfigPrivilege <String[]>] [-HostNICConfigPrivilege <String[]>]
 [-HostStorageConfigPrivilege <String[]>] [-iLOConfigPrivilege <String[]>] [-LoginPrivilege <String[]>]
 -Username <String[]> -LoginName <String[]> -Password <String[]> [-RemoteConsolePrivilege <String[]>]
 [-SystemRecoveryConfigPrivilege <String[]>] [-VirtualMediaPrivilege <String[]>]
 [-VirtualPowerAndResetPrivilege <String[]>] [-ServiceAccount <String[]>] [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOUser cmdlet adds a local user account.
The newUsername and newUserLogin parameters must not have values that exist in the current user database.
The user must have the Administer User Accounts privilege to add new users.
This cmdlet has the following parameters:

· Username

· LoginName

· Password

.
UserConfigPrivilege

.
RemoteConsolePrivilege

.
VirtualMediaPrivilege

.
iLOConfigPrivilege

.
VirtualPowerAndResetPrivilege

.
LoginPrivilege (available only on Gen10 servers)

.
HostBIOSConfigPrivilege (available only on Gen10 servers)

.
HostNICConfigPrivilege (available only on Gen10 servers)

.
HostStorageConfigPrivilege (available only on Gen10 servers)

.
SystemRecoveryConfigPrivilege (available only on Gen10 servers)

.
ServiceAccount (available only on Gen10 servers)

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOUser -Username testuser1 -Password testuser123 -LoginName testuser1 -UserConfigPrivilege Yes -iLOConfigPrivilege No -RemoteConsolePrivilege Yes -VirtualMediaPrivilege No -VirtualPowerAndResetPrivilege Yes
```

This cmdlet adds a new user to iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.3 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOUser -Username testuser2 -Password testuser123 -LoginName testuser2 -UserConfigPrivilege Yes -iLOConfigPrivilege No -RemoteConsolePrivilege Yes -VirtualMediaPrivilege No -VirtualPowerAndResetPrivilege Yes -HostBIOSConfigPrivilege Yes -HostNICConfigPrivilege Yes -HostStorageConfigPrivilege Yes -LoginPrivilege Yes -SystemRecoveryConfigPrivilege Yes
```

This cmdlet adds a new user to iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Add-HPEiLOUser -Connection $connection -Username testuser1 -Password testuser123 -LoginName testuser1 -UserConfigPrivilege Yes -iLOConfigPrivilege No -RemoteConsolePrivilege Yes -VirtualMediaPrivilege No -VirtualPowerAndResetPrivilege Yes
```

This cmdlet adds a new user to iLO 4 and iLO 5 along with various Privileges and an array of connection objects passed as named paramter.

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

### -UserConfigPrivilege
Specifies a boolean parameter that enables a user to add, edit, and delete local management processor user accounts.
A user with this privilege can change privileges for all users.
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
Specifies a boolean parameter that enables a user to configure Host BIOS Settings.
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
Specifies a Boolean parameter that enables a user to configure the Host NIC Settings.
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
Specifies a Boolean parameter that enables a user to configure the Host Storage Settings.
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
Specifies a boolean parameter that enables a user to configure iLO Settings.
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

### -LoginPrivilege
Specifies a Boolean parameter that enables a user to log in to the management processor.
All local accounts have the login privilege.
This privilege is added automatically if it is not specified.
The supported values are Yes and No.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: Yes
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Username
Username specifies the new username to be added.
This parameter can be a combination of any printable characters up to a maximum length of 39 characters.
This parameter is not case sensitive and must not be blank.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginName
LoginName is the new modified loginname used to gain access to the respective iLO.
This parameter is not case sensitive and must not be left blank.

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

### -Password
UserLogin is the new modified userlogin used to gain access to the respective iLO.
This parameter is not case sensitive and must not be left blank.

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

### -RemoteConsolePrivilege
Specifies a boolean parameter that enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.
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

### -SystemRecoveryConfigPrivilege
Specifies a boolean parameter that enables a user to configure SystemRecovery Configuration Privilege.
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

### -VirtualMediaPrivilege
Specifies a boolean parameter that gives the user permission to access the virtual media functionality.
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
Specifies a boolean parameter that enables enables a user to power-cycle or reset the host system.
These activities interrupt system availability.
A user with this privilege can diagnose the system by using the Generate NMI to System button.
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

### -ServiceAccount
Indicates that the account type is a service account.
Supported values are Yes and No.
This parameter is supported only on iLO 5 servers.

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
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Remove-HPEiLOUser]()

[Get-HPEiLOUser]()

