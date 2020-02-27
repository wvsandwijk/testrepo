---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

[TOC]

# Add-HPiLOSSORecord

## SYNOPSIS
Add a new HP SIM Single Sign-On (SSO) Server Record.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Add-HPiLOSSORecord [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-SSOInputType <Object>] [-SSOInputValue <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPiLOSSORecord cmdlet adds an HP SIM Single Sign-On (SSO) server record to the end of the database on iLO.
Duplicate records might be rejected and generate an error.
A list of servers(with or without port number) and corresponding username/password or credential, SSOInputType and SSOInputValue values must be provided as parameters.

There are three ways to add an HP SIM Trusted Server record using the Add-HPiLOSSOServer command:
• The server can be specified by network name (requires SSO trust level set to trust by name or trust all, but is not supported for trust by certificate).
Use the fully qualified network name.
• The server certificate can be imported by iLO 4 (the LOM processor requests the certificate from the specified HP SIM server using anonymous HTTP request).
The iLO 4 processor must be able to contact the HP SIM server on the network at the time this command is processed for this method to work.
• The server certificate can be directly installed on iLO 4.
However, you must obtain the x.509 certificate in advance.
This method enables you to configure the iLO 4 in advance of placing it on the network with the HP SIM server.
The method also enables you to verify the contents of the HP SIM server certificate.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Add-HPiLOSSORecord
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

SSOInputType is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same SSOInputType value for these servers? (Y/N) : y
Please enter SSOInputType : NETWORK

SSOInputValue is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53
Use same SSOInputValue value for these servers? (Y/N) : N
Enter SSOInputValue for 1.4.217.187: ilo32165.company.net
Enter SSOInputValue for 1.4.217.187: ilo20903.company.net
Enter SSOInputValue for 1.4.209.53: ilo2345.us.company.net
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Add-HPiLOSSORecord -Server $Server -Username $Username -Password $Password -SSOInputType "NETWORK" -SSOInputValue "hp01.company.net"
```

This command takes parameters for SSO Input Type and SSO Input values.
$Username and $Password contain list of credentials for accessing/modifying the iLO. 
$Server is a set of server details piped to the cmdlet.
It can be a string, an array of strings, a PowerShell object with IP address and other server details or an array of PowerShell objects with IP addresses and other details

### EXAMPLE 3
```
PS C:\> Add-HPiLOSSORecord -Server $Server -Username $Username -Password $Password -SSOInputType "NETWORK" -SSOInputValue "hp01.company.net"
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

### -SSOInputType
Secifies the method of adding an HP SIM SSO server record by network Name, by indirect import or by direct certificate import. 
Allowed values are NETWORK, IMPORT_FROM_NETWORK or IMPORT_CERTIFICATE

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

### -SSOInputValue
Specifies the server name in case of adding SSO record by network name if SSOInputType is set as NETWORK.
OR
Specifies the server to import from in case of adding SSO Record from by importing from another server if SSOInputType is set as IMPORT_FROM_NETWORK.
OR
Specifies the x.509 DER encoded certificate data you specify is added by iLO if SSOInputType is set as IMPORT_CERTIFICATE. 
You must include the lines of the certificate including the opening and closing lines
The certificate is validated by iLO to ensure that it can be decoded before it is stored.
An error results if the certificate is a duplicate or corrupt.
The iLO firmware does not support certificate revocation and does not honor certificates that appear expired.
You must remove revoked or expired certificates.

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
Without this parameter, Add-HPiLOSSORecord requires you to provide the values of all required parameters.

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

