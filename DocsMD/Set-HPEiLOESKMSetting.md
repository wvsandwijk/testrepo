---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOESKMSetting

## SYNOPSIS
Sets the communication setting for the Enterprise Secure Key Manager (ESKM) in iLO.

## SYNTAX

### UsernamePasswordSet (Default)
```
Set-HPEiLOESKMSetting [-Connection] <Connection[]> -ESKMUsername <String[]> -ESKMPassword <String[]>
 -ESKMGroupName <String[]> [-EnableRedundancy <String[]>] -ESKMCertName <String[]>
 -ESKMPrimaryServerAddress <String[]> -ESKMPrimaryServerPort <Int32[]> [-ESKMSecondaryServerAddress <String[]>]
 [-ESKMSecondaryServerPort <Int32[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

### CredentialSet
```
Set-HPEiLOESKMSetting [-Connection] <Connection[]> -ESKMCredential <PSCredential[]> -ESKMGroupName <String[]>
 [-EnableRedundancy <String[]>] -ESKMCertName <String[]> -ESKMPrimaryServerAddress <String[]>
 -ESKMPrimaryServerPort <Int32[]> [-ESKMSecondaryServerAddress <String[]>] [-ESKMSecondaryServerPort <Int32[]>]
 [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
Set-HPEiLOESKMSetting is updated in the iLO navigation of administration.
When the server's operating system starts up, iLO will check whether a key exists in the ESKM Primary Server or ESKM Secondary Server.
If a key is present, an SSH hand shake occurs and iLO allows the operating system to completely boot.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOESKMSetting -ESKMUsername gen10ilouser -ESKMPassword 12mfw*team -ESKMGroupName gen10ilogroup -EnableRedundancy Yes -ESKMCertName "Local CA" -ESKMPrimaryServerAddress 16.95.240.119 -ESKMPrimaryServerPort 9444 -ESKMSecondaryServerAddress 16.95.240.120 -ESKMSecondaryServerPort 9444
```

This example shows the execution of cmdlet when UsernamePassword set is used to set ESKMUsername and ESKMPassword for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $credential = Get-Credential

PS C:\> ,$connection | Set-HPEiLOESKMSetting -ESKMCredential $credential  -ESKMGroupName gen10ilogroup -EnableRedundancy Yes -ESKMCertName "Local CA" -ESKMPrimaryServerAddress 16.95.240.119 -ESKMPrimaryServerPort 9444 -ESKMSecondaryServerAddress 16.95.240.120 -ESKMSecondaryServerPort 9444
```

This example shows the execution of cmdlet when the credential set is used to set ESKMUsername and ESKMPassword for iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Set-HPEiLOESKMSetting -Connection $connection -ESKMUsername gen10ilouser -ESKMPassword 12mfw*team -ESKMGroupName gen10ilogroup -EnableRedundancy No -ESKMCertName "Local CA" -ESKMPrimaryServerAddress 16.95.240.119 -ESKMPrimaryServerPort 9444 -ESKMSecondaryServerAddress 16.95.240.120 -ESKMSecondaryServerPort 9444
```

This cmdlet sets the ESKM settings of the iLO 4 and iLO 5, in which an array of connection objects is passed as named parameter.

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

### -ESKMUsername
Specifies the ESKM admin username as a string or list of ESKMUsernames.
It can be a single string or it can be a collection of ESKMUsernames in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ESKMPassword
Specifies the ESKM admin user password as a string or list of ESKMPasswords.
It can be a single string or it can be a collection of ESKMPasswords in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ESKMGroupName
Specifies the ESKM group name as a string or list of group names under which the ESKM user needs to be added.
It can be a single string or it can be a collection of group names in the form of a string array.

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

### -EnableRedundancy
Determines whether redundancy is enabled.
Possible values are Yes or No.

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

### -ESKMCertName
Specifies the ESKM certificate name as a string or list of ESKMCertNames under which the ESKM user needs to be added.
It can be a single string or it can be a collection of ESKMCertNames in the form of a string array.
NOTE: The default value of ESKMCertName is set to Local CA, therefore, including its default parameter is not necessary.
However, ESKMCertName can be specified to accept a custom value at run time.

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

### -ESKMPrimaryServerAddress
Specifies the ESKM primary server address as a string or list of addresses under which the ESKM user needs to be added.
It can be a single string or it can be a collection of addresses in the form of a string array.

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

### -ESKMPrimaryServerPort
Specifies the ESKM primary server port as a string or list of ports.
It can be a single string or it can be a collection of ports in the form of a string array.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ESKMSecondaryServerAddress
Specifies the ESKM secondary server as a string or list of addresses under which the ESKM user needs to be added.
It can be a single string or it can be a collection of addresses in the form of a string array.

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

### -ESKMSecondaryServerPort
Specifies the ESKM secondary server port as a string or list of ports.
It can be a single string or it can be a collection of ports in the form of a string array.

```yaml
Type: Int32[]
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

### -ESKMCredential
ESKMCredential object based on username and password to log onto the Key Manager Server.
Credential should not be used along with ESKMUserLogin/ESKMPassword.

```yaml
Type: PSCredential[]
Parameter Sets: CredentialSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
System.Management.Automation.PSCredential[]
System.Int32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOESKMSetting]()

[Clear-HPEiLOESKMLog]()

[Test-HPEiLOESKMConnection]()

