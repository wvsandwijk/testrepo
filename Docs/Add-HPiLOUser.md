---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Add-HPiLOUser

## SYNOPSIS
Adds a local user account to the iLO.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Add-HPiLOUser [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>] [-Force]
 [-Server <Object>] [-NewUsername <Object>] [-NewUserLogin <Object>] [-NewPassword <Object>]
 [-AdminPriv <Object>] [-RemoteConsPriv <Object>] [-ResetServerPriv <Object>] [-VirtualMediaPriv <Object>]
 [-ConfigILOPriv <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPiLOUser cmdlet adds a local user account.
The newUsername and newUser parameters must not have values that exist in the current user database.
You must have Administer User Accounts privilege to add new users.
A list of servers(with or without port number) and corresponding username/password or credential, newUsername, newUserLogin and newPassword values must be provided as parameters along with the access privileges.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Add-HPiLOUser
Please enter Server IP or Hostname: 1.4.217.131,187
Do you want to add details for another server?(Y/N) : y
Please enter Server IP or Hostname: 1.4.209.53
Do you want to add details for another server?(Y/N) : n

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Username for these servers? (Y/N) : N
Enter Username for 1.4.217.131: administrator
Enter Username for 1.4.217.187: alansmith
Enter Username for 1.4.209.53: timhorton

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Password for these servers? (Y/N) : N
Enter Password for 1.4.217.131: ************
Enter Password for 1.4.217.187: ************
Enter Password for 1.4.209.53: ************

New username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same Password for these servers? (Y/N) : N
Enter new username for 1.4.217.131:DwayneJ 
Enter new username for 1.4.217.187: AnnaHath
Enter new username for 1.4.209.53: JoeMer

New User Login is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same user login for these servers? (Y/N) : N
Enter new user login for 1.4.217.131: dwjones
Enter new user login for 1.4.217.187: ahathaway
Enter new user login for 1.4.209.53: jmercur

New Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same new Password for these servers? (Y/N) : N
Enter new Password for 1.4.217.131: ************
Enter new Password for 1.4.217.187: ************
Enter new Password for 1.4.209.53: ************
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Add-HPiLOUser -Server $Server -newUsername $newUsername -newUserLogin $newUserLogin -newPassword $newPassword -AdminPriv $AdminPriv -RemoteConsPriv $RemoteConsPriv -ResetServerPriv $ResetServerPriv -VirtualMediaPriv $VirtualMediaPriv -ConfigILOPriv $ConfigILOPriv
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords, and required parameters.

### EXAMPLE 3
```
PS C:\> Add-HPiLOUser -Server $Server -Username $Username -Password $Password -newUsername $newUsername -newUserLogin $newUserLogin -newPassword $newPassword -AdminPriv $AdminPriv -RemoteConsPriv $RemoteConsPriv -ResetServerPriv $ResetServerPriv -VirtualMediaPriv $VirtualMediaPriv -ConfigILOPriv $ConfigILOPriv
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords, and required parameters.

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format or in a string format.
The PowerShell object may contain fields such as IP Address, Hostname, spn, fwri, pn, MAC address.
The object may also contain the userid and password required to access the iLO.
A range of iLO IPs can also be provided in the same string.
IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.
Following are examples of server parameters:

Example 1. 
$serverSet1 = "81.2.84.150"

Example 2.
$serverSet2 = New-Object PSObject | 
            Add-Member NoteProperty IP  81.2.84.150 -PassThru | 
            Add-Member NoteProperty SPN "ProLiant DL360p Gen8" -PassThru | 
            Add-Member NoteProperty FWRI 1.10 -PassThru | 
            Add-Member NoteProperty PN "Integrated Lights-Out 4 (iLO 4)" -PassThru |
            Add-Member NoteProperty HOSTNAME ilomxq12345cs.company.net -PassThru |
            Add-Member NoteProperty MACADDRESS 00:A0:C9:14:C8:29 -PassThru

Example 3.
$serverObj1 = New-Object PSObject | 
            Add-Member NoteProperty IP  81.2.84.150 -PassThru | 
            Add-Member NoteProperty SPN "ProLiant DL360p Gen8" -PassThru | 
            Add-Member NoteProperty FWRI 1.10 -PassThru | 
            Add-Member NoteProperty PN "Integrated Lights-Out 4 (iLO 4)" -PassThru |
            Add-Member NoteProperty HOSTNAME ilomxq12345cs.company.net -PassThru |
            Add-Member NoteProperty MACADDRESS 00:A0:C9:14:C8:29 -PassThru

$serverSet1 = @("81.2.84.150", $serverObj1,"81.2.88.158,161", "81.2.88.170-175", "2607:f0d0:1002:51::4")

Example 4.
$serverSet4 = "81.2.84.150:8888"

Example 5. 
$serverSet5 = "\[2607:f0d0:1002:51::4\]:8888"

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
Specifies the single username for all the iLOs or a list of usernames for each iLO in the input iLO list.
It can be a single string or it can be a collection of usernames in the form of a string array.

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
Specifies the single password for all the iLOs or a list of passwords for each iLO in the input iLO list.
It can be a single string or it can be a collection of passwords in the form of a string array.

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

### -NewUsername
Specifies the actual name of the user.
This can be in the form of a string or PowerShell Object or a list of one or both types.
This parameter can be a combination of any printable characters up to a maximum length of 39 characters.
This parameter is not case sensitive and must not be blank.

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

### -NewUserLogin
Specifies the name used to gain access to the respective iLO.
This parameter can be a combination of any printable characters up to a maximum length of 39 characters.
This parameter is not case sensitive and must not be left blank.

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

### -NewPassword
Specifies the password associated with the user.
This parameter is case sensitive and can be a combination of any printable characters.
The length is user defined and can be a minimum of zero characters and a maximum of 39 characters.
The minimum length is defined in the iLO Global Settings and has a default value of eight characters.

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

### -AdminPriv
Specifies a Boolean parameter that enables the user to administer user accounts.
The user can modify account settings, modify other user account settings, add users, and delete users. 
The value Yes or Y gives the added user the privileges of administering user.
Omitting this parameter or using any value except Yes or Y prevents the user from adding, deleting, or configuring user accounts.

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

### -RemoteConsPriv
Specifies a Boolean parameter that gives permission for the user to access the Remote Console functionality. 
This parameter is optional.
The Boolean string must be set to Yes or Y if the user is allowed this privilege.
If this parameter is used, the Boolean string value must not be left blank.
Omitting this parameter or using any value except Yes or Y denies the user access to Remote Console functionality.

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

### -ResetServerPriv
Specifies a Boolean parameter that gives the user permission to remotely manipulate the server power setting. 
This parameter is optional.
The Boolean string must be set to Yes or Y if the user is allowed this privilege.
If this parameter is used, the Boolean string value must not be left blank.
Omitting this parameter or using any value except Yes or Y prevents the user from manipulating the server power settings.

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

### -VirtualMediaPriv
Specifies a Boolean parameter that gives the user permission to access the virtual media functionality. 
This parameter is optional.
The Boolean string must be set to Yes or Y if the user is allowed this privilege.
If this parameter is used, the Boolean string value must not be left blank.
Omitting this parameter or using any value except Yes or Y denies the user the Virtual Media privilege.

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

### -ConfigILOPriv
Specifies a Boolean parameter that enables the user to configure iLO settings.
This privilege includes network settings, global settings, Insight Manager settings, and SNMP settings. 
This parameter is optional.
The Boolean string must be set to Yes or Y if the user is allowed this privilege.
If this parameter is used, the Boolean string value must not be blank.
Omitting this parameter or using any value except Yes or Y prevents the user from manipulating the current iLO configuration.

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
Without this parameter, Add-HPiLOUser requires you to provide the values of all required parameters.

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

