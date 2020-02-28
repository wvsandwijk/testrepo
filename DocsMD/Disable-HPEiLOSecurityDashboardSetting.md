---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Disable-HPEiLOSecurityDashboardSetting

## SYNOPSIS
Disables Security dashboard Ignore flags.

## SYNTAX

```
Disable-HPEiLOSecurityDashboardSetting [-Connection] <Connection[]> [-IgnoreSecurityOverrideSwitch]
 [-IgnoreSecureBoot] [-IgnorePasswordComplexity] [-IgnoreIPMIDCMIOverLAN] [-IgnoreMinimumPasswordLength]
 [-IgnoreRequireLoginforiLORBSU] [-IgnoreAuthenticationFailureLogging] [-IgnoreLastFirmwareScanResult]
 [-IgnoreRequireHostAuthentication] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Security Dashboard page displays the status of important security features, the Overall Security Status for the system.
This cmdlet will give option to disable the different security features.
This is supported only on iLO5.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $con = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $d = $con | Disable-HPEiLOSecurityDashboardSetting -IgnoreSecureBoot -IgnoreSecurityOverrideSwitch -IgnorePasswordComplexity -IgnoreIPMIDCMIOverLAN -IgnoreMinimumPasswordLength -IgnoreRequireLoginforiLORBSU -IgnoreAuthenticationFailureLogging -IgnoreLastFirmwareScanResult -IgnoreRequireHostAuthentication

PS C:\> $d
```

On an iLO5 server you will be disabling the ignore flag of all security parameters available on that server.

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

### -IgnoreSecurityOverrideSwitch
The server Security Override Switch (also called the System Maintenance Switch) is enabled.
This configuration is a not recommended because login authentication is not required when the Security Override Switch is enabled.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreSecureBoot
The UEFI Secure Boot option is disabled.
In this configuration, the UEFI system firmware skips validation for the boot loader, Option ROM firmware, and other system software executable for trusted signatures.
It breaks the chain of trust established by iLO from power-on.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnorePasswordComplexity
iLO is not configured to enforce the password complexity guidelines, which makes the server vulnerable to dictionary attacks.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreIPMIDCMIOverLAN
The IPMI/DCMI over LAN feature is enabled, which exposes the server to known IPMI security vulnerabilities.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreMinimumPasswordLength
The minimum password length is less than the recommended length, which makes the server vulnerable to dictionary attacks.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreRequireLoginforiLORBSU
iLO is not configured to require login credentials to access the iLO Configuration Utility in the UEFI System Utilities.
This configuration allows unauthenticated access to the iLO configuration during system boot.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreAuthenticationFailureLogging
iLO is not configured to log authentication failures.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreLastFirmwareScanResult
The last firmware verification test failed.
A firmware component is inconsistent or its integrity is compromised.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreRequireHostAuthentication
Determines whether iLO user credentials are required for host-based utilities such as HPONCFG and iLOREST.
When this flag is set, the iLO credentials are not required.
HPONCFG and iLOREST operate with iLO administrator privileges.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

[Get-HPEiLOSecurityDashboardInfo]()

[Enable-HPEiLOSecurityDashboardSetting]()

