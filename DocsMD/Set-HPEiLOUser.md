---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOUser

## SYNOPSIS
Modifies the existing local user account present in iLO.

## SYNTAX

```
Set-HPEiLOUser [-Connection] <Connection[]> -LoginName <String[]> [-NewUsername <String[]>]
 [-NewLoginName <String[]>] [-NewPassword <String[]>] [-UserConfigPrivilege <String[]>]
 [-RemoteConsolePrivilege <String[]>] [-VirtualMediaPrivilege <String[]>] [-iLOConfigPrivilege <String[]>]
 [-HostBIOSConfigPrivilege <String[]>] [-HostNICConfigPrivilege <String[]>]
 [-HostStorageConfigPrivilege <String[]>] [-LoginPrivilege <String[]>]
 [-SystemRecoveryConfigPrivilege <String[]>] [-VirtualPowerAndResetPrivilege <String[]>] [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOUser cmdlet modifies a local user account existing on the iLO.
The NewUsername and NewLoginName parameters must not have values that exist in the current user database.
The user must have Administator User Accounts privilege to modify existing users.
This cmdlet has the following parameters:

• LoginName
• NewUsername
• NewLoginName
• NewPassword
• UserConfigPrivilege
• RemoteConsolePrivilege
• VirtualMediaPrivilege
• iLOConfigPrivilege
• VirtualPowerAndResetPrivilege
• LoginPrivilege (available only on Gen10 servers)
• HostBIOSConfigPrivilege (available only on Gen10 servers)
• HostNICConfigPrivilege (available only on Gen10 servers)
• HostStorageConfigPrivilege (available only on Gen10 servers)
• SystemRecoveryConfigPrivilege (available only on Gen10 servers)

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> Set-HPEiLOUser -Connection $connection -LoginName  admin -NewUsername testadmin -NewLoginName testadmin -NewPassword abcd1234
```

This cmdlet sets the value of NewUsername, NewLoginName, and NewPassword for the corresponding LoginName of iLO 4 or iLO 5, in which the connection object is passed as named parameter.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOUser -LoginName admin -RemoteConsolePrivilege Yes -UserConfigPrivilege Yes -iLOConfigPrivilege No -VirtualMediaPrivilege No
```

This cmdlet shows the usage of cmdlet to set the privileges for the given LoginName in iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOUser -LoginName admin -HostBIOSConfigPrivilege yes -HostNICConfigPrivilege no -HostStorageConfigPrivilege No -LoginPrivilege yes
```

This cmdlet shows the usage of cmdlet to set the privileges for the given LoginName for iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Set-HPEiLOUser -Connection $connection -LoginName admin -UserConfigPrivilege Yes -ResetServerPrivilege No
```

This cmdlet sets the boolean value of privileges for the given LoginName of iLO 4 and iLO 5, in which an array of connection objects is passed as named parameter.

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

### -NewUsername
NewUsername specifies the new modified username.
This parameter can be a combination of any printable characters up to a maximum length of 39 characters.
This parameter is not case sensitive and must not be blank.

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

### -NewLoginName
NewLoginName specifies the new modified login name.
This parameter can be a combination of any printable characters up to a maximum length of 39 characters.
This parameter is not case sensitive and must not be blank.

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

### -NewPassword
NewPassword is the new password associated with the user.
This parameter is case sensitive and can be a combination of any printable characters.
The length is user defined and can be a minimum of zero characters and a maximum of 39 characters.
The minimum length is defined in the iLO Global Settings and has a default value of eight characters.

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

### -RemoteConsolePrivilege
Specifies a boolean parameter that enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.
The supported values are Yes and No.
Aliases : RemoteConsPrivilege

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
Specifies a boolean parameter that enables a user to configure Host NIC Settings.
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
Specifies a boolean parameter that enables a user to configure Host Storage Settings.
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
Specifies a boolean parameter that enables a user to log in to management processor.
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

### -SystemRecoveryConfigPrivilege
Specifies a boolean parameter that enables a user to manage the critical recovery firmware images on iLO Drive.
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

[Add-HPEiLOUser]()

[Get-HPEiLOUser]()

