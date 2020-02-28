---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Connect-HPEiLO

## SYNOPSIS
The Connect-HPEiLO cmdlet creates connection to one or multiple iLO targets.

## SYNTAX

### UsernamePasswordSet (Default)
```
Connect-HPEiLO [-IP] <String[]> [-Username] <String[]> [-Password] <String[]> [-Timeout <UInt32[]>]
 [-iLOResetWaitTimeout <UInt32[]>] [-DisableCertificateAuthentication] [-Force] [<CommonParameters>]
```

### CredentialSet
```
Connect-HPEiLO [-IP] <String[]> -Credential <PSCredential[]> [-Timeout <UInt32[]>]
 [-iLOResetWaitTimeout <UInt32[]>] [-DisableCertificateAuthentication] [-Force] [<CommonParameters>]
```

### XAuthTokenSet
```
Connect-HPEiLO [-IP] <String[]> -XAuthToken <String[]> [-Timeout <UInt32[]>] [-iLOResetWaitTimeout <UInt32[]>]
 [-DisableCertificateAuthentication] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Connect-HPEiLO cmdlet creates connection to one or multiple iLO targets represented by its iLO IP.
This cmdlet has the following parameters:
•  IP - Holds the target iLO IP.
•  Username - Holds the target iLO username.
•  Password - Holds the target iLO password.
•  Credential - Holds the target iLO Credential in a secure manner.
•  Timeout - Holds the HTTPS protocol time out.
•  DisableCerificateAuthentication - Using this bypasses the server certificate authentication.
•  iLOResetWaitTimeout - Holds the iLOResetWaitTime.

## EXAMPLES

### EXAMPLE 1
```
Connection using UsernamePasswordSet

PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.40 -Username username -Password password 

PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : username
```

This example shows the output of the Connect-HPEiLO cmdlet with UsernamePasswordSet input.

### EXAMPLE 2
```
Connection using CredentialSet

C:\PS> $Credential = Get-Credential;

C:\PS> $connection = Connect-HPEiLO -IP 10.20.30.40 -Credential $Credential -iLOResetWaitTimeout 100

PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 100
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : admin
```

This example shows the output of the Connect-HPEiLO cmdlet on Gen9 server with iLO IP and credential.

### EXAMPLE 3
```
Connection with positional input

C:\PS> $connection = Connect-HPEiLO 10.20.30.40 username password 

C:\PS> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 5 (iLO 5)
iLOFirmwareVersion               : 1.2
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         : username
```

This example shows the output of the Connect-HPEiLO cmdlet using iLO IP, Username, and Password passed as positional input.

### EXAMPLE 4
```
PS C:\> $pipelineInput = New-Object psobject
    
PS C:\> $pipelineInput | Add-Member IP 10.20.30.40
    
PS C:\> $pipelineInput | Add-Member Username username
    
PS C:\> $pipelineInput | Add-Member Password password
    
PS C:\> $connection = $pipelineInput | Connect-HPEiLO
    
PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 5 (iLO 5)
iLOFirmwareVersion               : 1.2
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         : username
```

This example shows the output of the Connect-HPEiLO cmdlet with iLO IP, Username, and Password as pipeline input.

### EXAMPLE 5
```
PS C:\> $connection = Connect-HPEiLO
cmdlet Connect-HPEiLO at command pipeline position 1
Supply values for the following parameters:
IP[0]: 10.20.30.1
IP[1]: 10.20.30.2
IP[2]: 10.20.30.3
IP[3]: 
Username[0]: username
Username[1]: username
Username[2]: username
Username[3]: 
Password[0]: password
Password[1]: password
Password[2]: password
Password[3]: 
    
PS C:\> $connection.Count
3

PS C:\> $connection

IP                               : 10.20.30.1
Hostname                         : qwerty.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : username

IP                               : 10.20.30.2
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 5 (iLO 5)
iLOFirmwareVersion               : 1.2
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         : username

IP                               : 10.20.30.3
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.54
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen8
ServerModel                      : DL320e
Timeout                          : 30
Username                         : username
```

This example shows the output of the Connect-HPEiLO cmdlet with interactive user input.

### EXAMPLE 6
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.40 -Username username -Password password -DisableCertificateAuthentication

PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : True
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.54
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen8
ServerModel                      : DL320e
Timeout                          : 30
Username                         : username
```

This example shows the output of the Connect-HPEiLO cmdlet with DisableCerificateAuthentication check.
This will bypass server certification check while establishing the connection on target.

### EXAMPLE 7
```
Connection using IP address in range

PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.40-42 -Username username -Password password 

PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : username

IP                               : 10.20.30.41
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 5 (iLO 5)
iLOFirmwareVersion               : 1.2
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         : username

IP                               : 10.20.30.42
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : username
```

### EXAMPLE 8
```
Connection using IP address with comma separated value

PS C:\> $connection = Connect-HPEiLO -IP "10.20.30.40,41" -Username username -Password password 

PS C:\> $connection

IP                               : 10.20.30.40
Hostname                         : abcd.com
ConnectionType                   : RIBCL
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 4 (iLO 4)
iLOFirmwareVersion               : 2.55
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen9
ServerModel                      : DL380
Timeout                          : 30
Username                         : username

IP                               : 10.20.30.41
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : Integrated Lights-Out 5 (iLO 5)
iLOFirmwareVersion               : 1.2
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         : username
```

### EXAMPLE 9
```
Connection using XAuthTokenSet

PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.40 -XAuthToken bf7d08a0d7c6321810be52af41926c1f

PS C:\> $connection

IP                               : 10.20.30.60
Hostname                         : abcd.com
ConnectionType                   : Redfish
DisableCertificateAuthentication : False
iLOGeneration                    : iLO5
iLOFirmwareVersion               : 1.4
iLOResetWaitTimeout              : 0
IsConnected                      : True
ServerFamily                     : ProLiant
ServerGeneration                 : Gen10
ServerModel                      : DL380
Timeout                          : 30
Username                         :
```

This example shows the output of the Connect-HPEiLO cmdlet with XAuthTokenSet input.

## PARAMETERS

### -IP
Specifies iLO IP/Hostname to create a connection.
IP can be either IPv4 address or IPv6 address.
The port number must be appended with the input IP address in case of a change in the HTTPS port number in iLO settings.
Aliases: Address,HostName,Server,iLOIP
ParameterSetName: (All)

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Address, HostName, Server, iLOIP

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Username
Username to log onto the target iLO.
Username needs to be given as input along with Password.
Username cannot be null or empty string.
ParameterSetName: UsernamePasswordSet
Aliases: LoginName

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases: LoginName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Password to log onto the target iLO.
Password needs to given along with Username.
Password cannot be null or an empty string.
ParameterSetName: UsernamePasswordSet

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Timeout
Specifes the HTTPS protocol time out.
The value is specified in seconds.
Default value is 30.
The parameter accepts values in the range 1 through 1800.
ParameterSetName: (All)

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 30
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -iLOResetWaitTimeout
Maximum time in seconds till the cmdlet waits for iLO to return back after iLO reset.
Default value is 0.
The parameter accepts values is in the range 0 through 300.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DisableCertificateAuthentication
If the DisableCertificateAuthentication switch parameter is present, the server certificate authentication is disabled while establishing the target connection.
If this parameter is not present, it will execute according to the global certificate authentication setting.
The default behavior is to authenticate server certificate.
ParameterSetName: (All)

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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this parameter will cause an error prompt for any required parameter that is missing.

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

### -Credential
Holds the target iLO Credential in a secure manner.
ParameterSetName: CredentialSet

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

### -XAuthToken
This parameter specifies the session key generated for the iLO via One View or through Redfish API.
It allows the user to create the connection object which can be used  later to configure the iLO.
This parameter is supported on iLO5 only.
ParameterSetName: XAuthTokenSet

```yaml
Type: String[]
Parameter Sets: XAuthTokenSet
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

### System.String[]
System.Management.Automation.PSCredential[]
System.UInt32[]
## OUTPUTS

### HPE.iLO.Response.Connection[]
If the cmdlet executes successfully it returns HPE.iLO.Response.Connection or HPE.iLO.Response.Connection\[\] object.
In case of error or warning, the corresponding error message is displayed.

## NOTES
•  Hostname property of cmdlet output will always show DNS hostname if it gets resolved, otherwise it will be empty.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Test-HPEiLOConnection]()

[Disconnect-HPEiLO]()

