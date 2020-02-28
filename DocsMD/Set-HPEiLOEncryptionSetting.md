---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOEncryptionSetting

## SYNOPSIS
Sets the security encryption setting.

## SYNTAX

```
Set-HPEiLOEncryptionSetting [-Connection] <Connection[]> -SecurityState <String[]> [-OutputType <String>]
 [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOEncryptionSetting cmdlet sets the security encryption settings.

WARNING: All active connections (including Remote Console and Virtual Media sessions) to the iLO device are dropped immediately when this cmdlet executes.
Running Set-HPEiLOEncryptionSetting will reset iLO to defaults,clearing all user and license data.
The username and password will be reset.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOEncryptionSetting -SecurityState FIPS
```

This cmdlet sets SecurityState on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOEncryptionSetting  -SecurityState Production
```

This cmdlet sets SecurityState on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Set-HPEiLOEncryptionSetting -Connection $connection  -SecurityState FIPS
```

This cmdlet sets SecurityState on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -SecurityState
The security level of the Encryption setting.
The possible values are Production, HighSecurity, FIPS, CNSA, and SuiteB.
• HighSecurity: iLO is operating in high security mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces.
• FIPS: Same as High Security.
This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements.
A reset to factory defaults is required to exit this mode.
• Production: iLO is operating in a security mode.
Default state for customer systems.
• CNSA: Same as FIPS.
Additionally meets the criteria for NSA Commercial National Security Algorithm suite.
Must be in FIPS mode to transition to CNSA.
• SuiteB: Same as FIPS.
Additionally meets the criteria for NSA SuiteB Top Secret installations.
Must be in FIPS mode to transition to SuiteB.
• SynergySecurityMode: It is the mode supported by the Synergy Composer.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Production, HighSecurity, FIPS, CNSA, SuiteB, SynergySecurityMode

Required: True
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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: True
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
## NOTES
• To disable FIPS security state, use the Set-HPEiLOFactoryDefault cmdlet.
• Enabling FIPS mode resets critical iLO security settings to the factory default values, clears all user data, and erases the iLO Event Log and the Integrated Management Log.
• For information regarding LicenseKey that is required for each SecurityState, refer to the HPE iLO licensing guide.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOFactoryDefault]()

[Get-HPEiLOEncryptionSetting]()

