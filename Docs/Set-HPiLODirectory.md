---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLODirectory

## SYNOPSIS
Modifies the directory settings on iLO.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLODirectory [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-LDAPDirectoryAuthentication <Object>] [-LocalUserAccount <Object>]
 [-ServerAddress <Object>] [-ServerPort <Object>] [-ObjectDN <Object>] [-ObjectPassword <Object>]
 [-UserContext1 <Object>] [-UserContext2 <Object>] [-UserContext3 <Object>] [-UserContext4 <Object>]
 [-UserContext5 <Object>] [-UserContext6 <Object>] [-UserContext7 <Object>] [-UserContext8 <Object>]
 [-UserContext9 <Object>] [-UserContext10 <Object>] [-UserContext11 <Object>] [-UserContext12 <Object>]
 [-UserContext13 <Object>] [-UserContext14 <Object>] [-UserContext15 <Object>] [<CommonParameters>]
```

## DESCRIPTION
The SetHPiLODirectory cmdlet modifies the directory settings on iLO.
You must have "Configure iLO" privilege to execute this command.
Upper-case letters are not supported, and are converted automatically to lower-case.
If either a double quote or a single quote is used, it must be different from the delimiter.
Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $uname = @("asmith","jcook")
PS C:\> $pword = @("P@ssw0rd1","P@ssw0rd2")
PS C:\> $LDAPDirectoryAuthentication = @("Disable","Use_HP_Extended_Schema")
PS C:\> $localUserAccount = @("Y","N")
PS C:\> $serverAddress = @("123.56.89.123","ldap.company.net")
PS C:\> $serverPort = @("636","636")
PS C:\> $objectDN = @("value="CN=server1_rib,OU=RIB, DC=mycomp1,DC=com","value="CN=server2_rib,OU=RIB, DC=mycomp2,DC=com")
PS C:\> $objectPassword = @("password1","password2")
PS C:\> $uContext1 = @("CN=Users11,DC=mycompu, DC=com","CN=Users12,DC=mycomp1, DC=com")
PS C:\> $uContext2 = @("CN=Users21,DC=mycompu, DC=com","CN=Users22,DC=mycomp2, DC=com")
PS C:\> $uContext3 = @("CN=Users31,DC=mycompu, DC=com","CN=Users32,DC=mycomp3, DC=com")
PS C:\> Set-HPiLODirectory -Server @("1.4.29.195","1.4.27.103") -Username $uname -Password $pword -LDAPDirectoryAuthentication $LDAPDirectoryAuthentication -LocalUserAccount $localUserAccount -ServerAddress $serverAddress -ServerPort $serverPort -ObjectDN $objectDN -ObjectPassword $objectPassword -UserContext1 $uContext1 -UserContext2 $uContext2 -UserContext3 $uContext3
```

This will set the values for specied parameters i.e.
LDAPDirectoryAuthentication, LocalUserAccount, ServerAddress, ServerPort, ObjectDN, ObjectPassword, UserContext1, UserContext2, UserContext3.
Values of other parameters remain unchanged.
The mandatory parameter values for Server, username and password are provided.

### EXAMPLE 2
```
PS C:\> Set-HPiLODirectory -Server $Server -LDAPDirectoryAuthentication @("Disable","Use_HP_Extended_Schema") -LocalUserAccount @("Y","N")

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Username for these servers? (Y/N) : Y
Please enter Username : alansmith

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Password for these servers? (Y/N) : Y
Please enter Password : ************
```

### EXAMPLE 3
```
PS C:\> Set-HPiLODirectory -Server $Server -Username $username -Password $password -LDAPDirectoryAuthentication @("Disable","Use_HP_Extended_Schema") -LocalUserAccount @("Y","N")
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames and passwords.

### EXAMPLE 4
```
PS C:\> $Server | Set-HPiLODirectory
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames and passwords.
The piped object is a PSCustomObject or a list of PSCustomObject.
Each of the PSCustomObject must have the parametes that are to be modified

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format, passed as a parameter to the cmdlet.
This contains fields such as IP Address, Hostname, spn, fwri, pn, MAC address.
It may also contain the userid and password required to access the iLO.
IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Credential
Credential object based on user name and password to log onto the iLO.
Credential should not be used along with Username/Password.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Username
Specifies the username to be used for all the iLOs or a list of usernames for each iLO in the input iLO list.
This field is overridden if the username(s) is provided in the input iLO list

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Specifies the password to be used for all the iLOs or a list of password for each iLO in the input iLO list.
This field is overridden if the password(s) is provided in the input iLO list

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LDAPDirectoryAuthentication
Enables or disables LDAP directory authentication.
The possible values are Disable,Use_HP_Extended_Schema,Use_Directory_Default_Schema.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LocalUserAccount
Enables or disables local user accounts.
The possible values are Yes, Y, Enable or On to enable local user account and No, N, Disable or Off to disable user account.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServerAddress
Specifies the location of the directory server.
The directory server location is specified as an IP address or DNS name.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServerPort
Specifies the port number used to connect to the directory server.
This value is obtained from the directory administrator.
The secure LDAP port is 636, but the directory server can be configured for a different port number.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: Port

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ObjectDN
Specifies the unique name of iLO in the directory server.
This value is obtained from the directory administrator.
Distinguished names are limited to 256 characters.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ObjectPassword
Specifies the password associated with the iLO object in the directory server.
Passwords are limited to 39 characters.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext1
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext2
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext3
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext4
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext5
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext6
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext7
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext8
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext9
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext10
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext11
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext12
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext13
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext14
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContext15
Specify searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: Object
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
Possible value can be ExternalCommand, XML, RIBCL or PSObject.
Default value is PSObject.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: PSObject
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, Set-HPiLODirectory requires you to provide the values of all required parameters.

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

### PSObject OR array of PSObject OR String OR array of String
You can pipe one IP address or a list of IP addresses as Strings, or one PSObject or list of PSObjects having the iLO details such as IP Address, Hostname, Username and Password to access the iLO.

## OUTPUTS

### 
Use Get-Member to get details of fields in returned objects.

## NOTES
Some forms of command line parameters must be enclosed in quotes for correct interpretation by the system.
For example a string parameter of 1234 is interpreted as a number instead of a string without quotes.
An IP address set of 10.10.10.11,33 would also be misinterpreted. 
Use either "1234" or "10.10.10.11,33" to get the expected results.

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)

