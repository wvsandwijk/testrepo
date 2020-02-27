---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOLicenseKey

## SYNOPSIS
Applies a license key for the Integrated Lights-Out Advanced Pack.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOLicenseKey [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-Key <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOLicenseKey cmdlet activates or deactivates iLO features based on the license type.
There are three types of licenses - advanced, essentials, and scale-out.
Details of the licenses are available at http://h17007.www1.hp.com/us/en/enterprise/servers/management/ilo/index.aspx#tab=TAB3  
The iLO license pack is licensed to a single server.
You may not use the same individual license key on more than one server.
Contact your Account Representative for information on Volume Licensing or Master License Agreements if you want to use the same key for multiple servers.
You do not have to use a licensing key on a ProLiant BL Class server.
Advanced features are automatically activated.
You must have Configure iLO Settings privilege to execute this command.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOLicenseKey
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

Key is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same License Key for these servers? (Y/N) : N
Enter License Key for 1.4.217.131: 12345-qwert-123ab-xyz12
Enter License Key for 1.4.217.187: 4sdfg8-dfgsd-hjf45h-xcvb38
Enter License Key for 1.4.209.53: j34oph-lashd-jiq890-asdjl
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Set-HPiLOLicenseKey -Server $Server -Key $key

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

$Server is passed as parameter to Set-HPiLOLicenseKey.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Set-HPiLOLicenseKey -Server $Server -Username $Username -Password $Password -Key $Key
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames and passwords.

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format or in a string format.
The PowerShell object may contain fields such as IP Address, Hostname, spn, fwri, pn, MAC address.
The object may also contain the userid and password required to access the iLO.
A range of iLO IPs can also be provided in the same string.
IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.
Following are examples of Server parameters:

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

### -Key
Signals the activation of the iLO 4 advanced/essential/scale-out licensing.
This parameter specifies the license key value.
The key must be entered as one continuous string.
Commas, periods, or other characters must not separate the key value.
The key only accepts 25 characters; other characters entered to separate key values are interpreted as a part of the key, and results in the wrong key being entered.

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
Without this parameter, Set-HPiLOLicenseKey requires you to provide the values of all required parameters.

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

