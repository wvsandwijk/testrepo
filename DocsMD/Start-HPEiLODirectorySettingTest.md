---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Start-HPEiLODirectorySettingTest

## SYNOPSIS
Starts the Directory Setting test.

## SYNTAX

### UsernamePasswordSet (Default)
```
Start-HPEiLODirectorySettingTest [-Connection] <Connection[]> [-ADAdminUsername <String[]>]
 [-ADAdminPassword <String[]>] [-TestUsername <String[]>] [-TestUserPassword <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

### CredentialSet
```
Start-HPEiLODirectorySettingTest [-Connection] <Connection[]> [-ADAdminCredential <PSCredential[]>]
 [-TestUserCredential <PSCredential[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Start-HPEiLODirectorySettingTest cmdlet starts the Directory Setting test with active directory administrator user credentials and lists all privileges of users.
This cmdlet is supported both on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Start-HPEiLODirectorySettingTest -ADAdminUsername admin -ADAdminPassword admin123 -TestUsername admin -TestUserPassword admin123
```

This cmdlet starts the Directory setting test on iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\ > $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Start-HPEiLODirectorySettingTest -Connection $connection -ADAdminUsername admin -ADAdminPassword admin123 -TestUsername admin -TestUserPassword admin123
```

This cmdlet starts the Directory setting test of iLO 4, in which the connection object is passed as named parameter.

### EXAMPLE 3
```
PS C:\ > $con = Connect-HPEiLO 10.20.30.10 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\ > $s = $con | Start-HPEiLODirectorySettingTest
```

This cmdlet starts the Directory setting test on iLO5, in which the connection object is passed as pipeline input.

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

### -ADAdminUsername
Specifies the active directory administrator username for all the iLOs or a list of usernames for each iLO in the input iLO list.
It can be a single string or it can be a collection of usernames in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ADAdminPassword
Specifies the active directory administrator Password for all the iLOs or a list of passwords for each iLO in the input iLO list.
It can be a single string or it can be a collection of passwords in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TestUsername
Specifies the active directory test username for all the iLOs or a list of usernames for each iLO in the input iLO list.
It can be a single string or it can be a collection of usernames in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TestUserPassword
Specifies the active directory test Password for all the iLOs or a list of passwords for each iLO in the input iLO list.
It can be a single string or it can be a collection of passwords in the form of a string array.

```yaml
Type: String[]
Parameter Sets: UsernamePasswordSet
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

### -ADAdminCredential
This object is based on the username and password to log onto the administrator account of the active directory server.
ADAdminCredential should not be used alongside ADAdminUsername/ADAdminPassword.

```yaml
Type: PSCredential[]
Parameter Sets: CredentialSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TestUserCredential
This object is based on the username and password to log on to the test user account of the active directory server.
TestUserCredential should not be used alongside TestUsername/TestUserPassword.

```yaml
Type: PSCredential[]
Parameter Sets: CredentialSet
Aliases:

Required: False
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
## OUTPUTS

### System.Object
If the cmdlet executes successfully, an object is returned with Status as Information.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Stop-HPEiLODirectorySettingTest]()

[Get-HPEiLODirectorySettingTestResult]()

