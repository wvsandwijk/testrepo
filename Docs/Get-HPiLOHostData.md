---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Get-HPiLOHostData

## SYNOPSIS
Gets the host data displayed on the Server Information page.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Get-HPiLOHostData [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-Type <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPiLOHostData cmdlet gets the host data displayed on the Server Information page.
The data is extracted from SMBIOS records stored on the host.
The raw data in the SMBIOS records is retrieved using this script.
You can access the data by base 64 decoding the returned data.
The same fields that are displayed on the web page are also decoded through this interface.
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Get-HPiLOHostData
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



IP             : 1.4.217.131
HOSTNAME       : iloqwc.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswLWBgIA//
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0h6ICAgICAgIAAA; TYPE=3; 
                 FIELD=System.Object[]}...}

IP             : 1.4.217.187
HOSTNAME       : ilo.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABA/
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0; TYPE=4; 
                 FIELD=System.Object[]}...}

IP             : 1.4.209.53
HOSTNAME       : ilomxq.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswL\
                 vrvwOOZADAEvwIQSUQByAHMAc; TYPE=3; 
                 FIELD=System.Object[]}...}
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Get-HPiLOHostData -Server $Server

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



IP             : 1.4.217.131
HOSTNAME       : iloqwc.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswLWBgIA//
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0h6ICAgICAgIAAA; TYPE=3; 
                 FIELD=System.Object[]}...}

IP             : 1.4.217.187
HOSTNAME       : ilo.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABA/
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0; TYPE=4; 
                 FIELD=System.Object[]}...}

IP             : 1.4.209.53
HOSTNAME       : ilomxq.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswL\
                 vrvwOOZADAEvwIQSUQByAHMAc; TYPE=3; 
                 FIELD=System.Object[]}...}
```

$Server is passed as parameter to Get-HPiLOHostData.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> $Server | Get-HPiLOHostData


IP             : 1.4.217.131
HOSTNAME       : iloqwc.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswLWBgIA//
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0h6ICAgICAgIAAA; TYPE=3; 
                 FIELD=System.Object[]}...}

IP             : 1.4.217.187
HOSTNAME       : ilo.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzMjAzMjAtMjAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABA/
                 vrvwOOZADAEvwIQSUQByAHMAcAAAAICBAEALMAUHJvYyAxAEludGVsACBJbnRlbChSKSBYZW9uKFIpIENQVSBFNS0yNDcwIDAgQCAyLjMwR0; TYPE=4; 
                 FIELD=System.Object[]}...}

IP             : 1.4.209.53
HOSTNAME       : ilomxq.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}, @{B64_DATA=ARsAAQQFAAEzMjAzMjBDTjcxNDYwMDBWBg
                 IDQ043MTQ2MDAwViAgICAgIAAzAwICAgICAgAFByb0xpYW50AEhQAFByb0xpYW50IERMMzYwZSBHZW44ACAgICAgICAgICAgICAAAA==; TYPE=1; FIELD=System.Object[]}, 
                 @{B64_DATA=AxUAAwEXAAIDBAMEAgAAAAABAgAASFAAQ043MTQ2MDAwViAgICAgIAAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAA; TYPE=3}, @{B64_DATA=BCoABAEDswL\
                 vrvwOOZADAEvwIQSUQByAHMAc; TYPE=3; 
                 FIELD=System.Object[]}...}
```

$Server is piped to Get-HPiLOHostData.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address, username and password.

### EXAMPLE 4
```
PS C:\> Get-HPiLOHostData -Server $Server -Username $Username -Password $Password -Type 0


IP             : 1.4.217.131
HOSTNAME       : iloqwc.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAAwf//wEeSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}}

IP             : 1.4.217.187
HOSTNAME       : ilo.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DSFAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0; FIELD=System.Object[]}}

IP             : 1.4.209.53
HOSTNAME       : ilomxq.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
SMBIOS_RECORD  : {@{B64_DATA=ABgAAAECAPADf4DayX0AAAAAUDczADAzLzE2LzIwMTIAAA==; TYPE=0}}
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames and passwords.
The parameter Type 0 is specified and only those records are retrieved where the TYPE equals 0

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

### -Type
This indicates the type of Host data to retrieve.
Value should be integer.
If this parameter is not specified then all of the Host Data is returned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
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
Without this parameter, Get-HPiLOHostData requires you to provide the values of all required parameters.

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
