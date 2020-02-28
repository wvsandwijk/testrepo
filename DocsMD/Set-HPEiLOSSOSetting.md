---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSSOSetting

## SYNOPSIS
Modifies the SSO settings for the iLO.

## SYNTAX

```
Set-HPEiLOSSOSetting [-Connection] <Connection[]> [-TrustMode <String[]>]
 [-UserRoleUserConfigPrivilege <String[]>] [-UserRoleRemoteConsolePrivilege <String[]>]
 [-UserRoleVirtualMediaPrivilege <String[]>] [-UserRoleLoginPrivilege <String[]>]
 [-UserRoleVirtualPowerAndResetPrivilege <String[]>] [-UserRoleiLOConfigPrivilege <String[]>]
 [-UserRoleHostBIOSConfigPrivilege <String[]>] [-UserRoleHostNICConfigPrivilege <String[]>]
 [-UserRoleHostStorageConfigPrivilege <String[]>] [-UserRoleSystemRecoveryConfigPrivilege <String[]>]
 [-OperatorRoleUserConfigPrivilege <String[]>] [-OperatorRoleRemoteConsolePrivilege <String[]>]
 [-OperatorRoleVirtualMediaPrivilege <String[]>] [-OperatorRoleLoginPrivilege <String[]>]
 [-OperatorRoleVirtualPowerAndResetPrivilege <String[]>] [-OperatorRoleiLOConfigPrivilege <String[]>]
 [-OperatorRoleHostBIOSConfigPrivilege <String[]>] [-OperatorRoleHostNICConfigPrivilege <String[]>]
 [-OperatorRoleHostStorageConfigPrivilege <String[]>] [-OperatorRoleSystemRecoveryConfigPrivilege <String[]>]
 [-AdministratorRoleUserConfigPrivilege <String[]>] [-AdministratorRoleRemoteConsolePrivilege <String[]>]
 [-AdministratorRoleVirtualMediaPrivilege <String[]>] [-AdministratorRoleLoginPrivilege <String[]>]
 [-AdministratorRoleVirtualPowerAndResetPrivilege <String[]>] [-AdministratorRoleiLOConfigPrivilege <String[]>]
 [-AdministratorRoleHostBIOSConfigPrivilege <String[]>] [-AdministratorRoleHostNICConfigPrivilege <String[]>]
 [-AdministratorRoleHostStorageConfigPrivilege <String[]>]
 [-AdministratorRoleSystemRecoveryConfigPrivilege <String[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSSOSetting cmdlet modifies the SSO settings for iLO.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOSSOSetting -TrustMode All -UserRoleUserConfigPrivilege Yes -UserRoleRemoteConsolePrivilege No -UserRoleVirtualMediaPrivilege yes -UserRoleLoginPrivilege yes -UserRoleVirtualPowerAndResetPrivilege No -UserRoleiLOConfigPrivilege Yes
```

This cmdlet sets the TrustMode and UserRole privileges for iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOSSOSetting -OperatorUserConfigPrivilege Yes -OperatorRemoteConsolePrivilege No -OperatorVirtualMediaPrivilege yes -OperatorLoginPrivilege yes -OperatorVirtualPowerAndResetPrivilege No -OperatoriLOConfigPrivilege Yes -AdministratorUserConfigPrivilege Yes -AdministratorRemoteConsolePrivilege No -AdministratorVirtualMediaPrivilege yes -AdministratorLoginPrivilege yes -AdministratorVirtualPowerAndResetPrivilege No -AdministratoriLOConfigPrivilege Yes
```

This cmdlet sets the Operator and Adminstrator role for iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 

PS C:\> Set-HPEiLOSSOSetting -Connection $connection -UserRoleHostBIOSConfigPrivilege Yes -UserRoleHostNICConfigPrivilege Yes -UserRoleHostStorageConfigPrivilege Yes -OperatorRoleHostBIOSConfigPrivilege Yes -OperatorRoleHostNICConfigPrivilege No -OperatorRoleHostStorageConfigPrivilege No
```

This cmdlet sets the SSO setting for iLO 5, in which the connection object is passed as named parameter.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Set-HPEiLOSSOSetting -Connection $connection -TrustMode All -UserRoleUserConfigPrivilege Yes -UserRoleRemoteConsolePrivilege No -UserRoleVirtualMediaPrivilege yes -UserRoleLoginPrivilege yes -UserRoleVirtualPowerAndResetPrivilege No -UserRoleiLOConfigPrivilege Yes
```

This comand is used to set the TrustMode and Operator role privileges for iLO 4 and iLO 5, in which an array of connection objects is passed as named parameter.

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

### -TrustMode
Sets the Single Sign-On trust mode.
The current setting is unchanged if this setting is omitted from the script.
Accepted values are:
• TrustNone - Disables HPE SIM SSO on this processor.
• TrustbyCertificate - Accepts only SSO requests authenticated using a certificate.
• TrustbyName - Trusts SSO requests from the named HPE SIM server.
• TrustAll - Accepts any SSO request from the network.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: TrustNone, TrustAll, TrustbyName, TrustbyCertificate

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserRoleUserConfigPrivilege
Allows login for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleRemoteConsolePrivilege
Grants access to remote console resources for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleVirtualMediaPrivilege
Grants access to virtual media resources for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleLoginPrivilege
Allows local user account modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleVirtualPowerAndResetPrivilege
Grants access to power and reset controls for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleiLOConfigPrivilege
Allows iLO settings modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -UserRoleHostBIOSConfigPrivilege
Allows Host BIOS settings modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
This parameter is supported only in iLO 5 servers.

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

### -UserRoleHostNICConfigPrivilege
Allows Host NIC settings modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
This parameter is supported only in iLO 5 servers.

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

### -UserRoleHostStorageConfigPrivilege
Allows Host Storage settings modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -UserRoleSystemRecoveryConfigPrivilege
Allows System Recovery settings modification for the User role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -OperatorRoleUserConfigPrivilege
Allows login for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleRemoteConsolePrivilege
Grants access to remote console resources for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleVirtualMediaPrivilege
Grants access to virtual media resources for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleLoginPrivilege
Allows local user account modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleVirtualPowerAndResetPrivilege
Grants access to power and reset controls for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleiLOConfigPrivilege
Allows iLO settings modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -OperatorRoleHostBIOSConfigPrivilege
Allows Host BIOS settings modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -OperatorRoleHostNICConfigPrivilege
Allows Host NIC settings modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
This parameter is supported only in iLO 5 servers.

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

### -OperatorRoleHostStorageConfigPrivilege
Allows Host Storage settings modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -OperatorRoleSystemRecoveryConfigPrivilege
Allows System Recovery settings modification for the Operator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No. 
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

### -AdministratorRoleUserConfigPrivilege
Allows login for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleRemoteConsolePrivilege
Grants access to remote console resources for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleVirtualMediaPrivilege
Grants access to virtual media resources for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleLoginPrivilege
Allows local user account modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleVirtualPowerAndResetPrivilege
Grants access to power and reset controls for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleiLOConfigPrivilege
Allows iLO settings modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.

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

### -AdministratorRoleHostBIOSConfigPrivilege
Allows Host BIOS settings modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -AdministratorRoleHostNICConfigPrivilege
Allows Host NIC settings modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -AdministratorRoleHostStorageConfigPrivilege
Allows Host Storage settings modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

### -AdministratorRoleSystemRecoveryConfigPrivilege
Allows System Recovery settings modification for the Administrator role.
If this privilege is omitted, the current value is unchanged.
The privilege assignment is Boolean and can be set to Yes or No.
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

[Get-HPEiLOSSOSetting]()

[Add-HPEiLOSSORecord]()

[Remove-HPEiLOSSORecord]()

