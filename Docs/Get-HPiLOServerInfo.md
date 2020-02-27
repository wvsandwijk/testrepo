---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Get-HPiLOServerInfo

## SYNOPSIS
Gets the embedded health of the host.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Get-HPiLOServerInfo [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-Category <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPiLOServerInfo cmdlets retrieves the health information of the host system.
This includes health details of fans, temperatures, power supplies, VRM, processors, drive, memory, NICs, storage, firmware versions and a summary of the health.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Get-HPiLOServerInfo
Please enter Server IP or Hostname: 1.4.217.131,187
Do you want to add details for another server?(Y/N): y
Please enter Server IP or Hostname: 1.4.209.53
Do you want to add details for another server?(Y/N): n

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Username for these servers? (Y/N) : n
Enter Username for 1.4.217.131 (iloqwc.company.net): administrator
Enter Username for 1.4.217.187 (ilo.company.net): alansmith
Enter Username for 1.4.209.53 (ilomxq.company.net): timhorton

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Password for these servers? (Y/N) : n
Enter Password for 1.4.217.131 (iloqwc.company.net): ************
Enter Password for 1.4.217.187 (ilo.company.net): ************
Enter Password for 1.4.209.53 (ilomxq.company.net): ************

IP               : 1.4.217.131
HOSTNAME         : iloqwc.company.net
STATUS_TYPE      : OK
STATUS_MESSAGE   : OK
HEALTH_STATUS    : @{BIOS_HARDWARE_STATUS=OK; FANS=System.Object[]; MEMORY_STATUS=OK; NETWORK_STATUS=OK; 
                   POWER_SUPPLIES=System.Object[]; PROCESSOR_STATUS=OK; STORAGE_STATUS=OK; 
                   TEMPERATURE_STATUS=OK}
FAN              : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                   SPEED=29 Percentage; STATUS=OK; ZONE=System},
.
.
.
MEMORY           : @{ADVANCED_MEMORY_PROTECTION=; MEMORY_DETAILS=; MEMORY_DETAILS_SUMMARY=}
NIC              : @{iLO=; NIC=System.Object[]}
STORAGE          : @{CONTROLLER=; DISCOVERY_STATUS=}
FIRMWARE_VERSION : @{INDEX_1=; INDEX_10=; INDEX_2=; INDEX_3=; INDEX_4=; INDEX_5=; INDEX_6=; INDEX_7=; 
                   INDEX_8=; INDEX_9=}

IP               : 1.4.217.187
HOSTNAME         : ilo.company.net
STATUS_TYPE      : OK
STATUS_MESSAGE   : OK
HEALTH_STATUS    : @{BIOS_HARDWARE_STATUS=OK; FANS=System.Object[]; MEMORY_STATUS=OK; NETWORK_STATUS=OK; 
                   POWER_SUPPLIES=System.Object[]; PROCESSOR_STATUS=OK; STORAGE_STATUS=OK; 
                   TEMPERATURE_STATUS=OK}
FAN              : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                   SPEED=29 Percentage; STATUS=OK; ZONE=System}, 
.
.
.
MEMORY           : @{ADVANCED_MEMORY_PROTECTION=; MEMORY_DETAILS=; MEMORY_DETAILS_SUMMARY=}
NIC              : @{iLO=; NIC=System.Object[]}
STORAGE          : @{CONTROLLER=; DISCOVERY_STATUS=}
FIRMWARE_VERSION : @{INDEX_1=; INDEX_10=; INDEX_2=; INDEX_3=; INDEX_4=; INDEX_5=; INDEX_6=; INDEX_7=; 
                   INDEX_8=; INDEX_9=}

IP             : 1.4.209.53
HOSTNAME       : ilomxq.company.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
HEALTH_STATUS  : @{DRIVE_STATUS=OK; FANS=System.Object[]; POWER_SUPPLIES=System.Object[]; 
                 TEMPERATURE_STATUS=OK}
FAN            : {@{LABEL=Fan 1; SPEED=20 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan 2; SPEED=29 
.
.
.
MEMORY         : @{MEMORY_COMPONENTS=}
NIC_INFOMATION : @{iLO=; iSCSI=System.Object[]; NIC=System.Object[]}
DRIVE          : @{BACKPLANE=System.Object[]}
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
The default value of "All" is used for the parameter "Category" and health status of all the components of the server are retrieved.

### EXAMPLE 2
```
PS C:\> Get-HPiLOServerInfo -Server $server -Category Fan

Username is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.209.53

Use same Username for these servers? (Y/N) : n
Enter Username for 1.4.217.131 (iloqwc.company.net): administrator
Enter Username for 1.4.217.187 (ilo.company.net): alansmith
Enter Username for 1.4.209.53 (ilomxq.company.net): timhorton

Password is not provided for the following iLO Server(s):
1.4.217.131
1.4.217.187
1.4.217.187

Use same Password for all servers (y/n) : n
Enter Password for 1.4.217.131 (iloqwc.company.net): ************
Enter Password for 1.4.217.187 (ilo.company.net): ************
Enter Password for 1.4.209.53 (ilomxq.company.net): ************

IP             : 1.4.217.135
HOSTNAME       : ilom.americas.corp.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}


IP             : 1.4.217.187
HOSTNAME       : mxq.americas.corp.net

STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}


IP             : 1.4.209.53
HOSTNAME       : ilo2m.americas.hpqcorp.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}
```

$server is passed as parameter to Get-HPiLOServerInfo.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address.
A value of "Fan" is also provided for the parameter "Category" so that only details of server fans are output to the user. 
Since the usernames and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Get-HPiLOServerInfo -Server $server -Username $username -Password $password -Category Fan

IP             : 1.4.217.135
HOSTNAME       : ilom.americas.corp.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}


IP             : 1.4.217.187
HOSTNAME       : mxq.americas.corp.net

STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}


IP             : 1.4.209.53
HOSTNAME       : ilo2m.americas.hpqcorp.net
STATUS_TYPE    : OK
STATUS_MESSAGE : OK
FAN            : {@{LABEL=Fan Block 1; SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 2; 
                 SPEED=29 Percentage; STATUS=OK; ZONE=System}, @{LABEL=Fan Block 3; SPEED=29 Percentage; 
                 STATUS=OK; ZONE=System}, @{LABEL=Fan Block 4; SPEED=29 Percentage; STATUS=OK; 
                 ZONE=System}...}
```

This command shows that the lost of iLO server addresses is passed as a parameter along with usernames, passwords and the value "Fan" for the parameter "Category".

## PARAMETERS

### -Server
Specifies the list of iLO with details in PowerShell object format or in a string format.
The PowerShell object may contain fields such as IPv6 Address, Hostname, spn, fwri, pn, MAC address.
The object may also contain the userid and password required to access the iLO.
A range of iLO IPs can also be provided in the same string.IPv6 values for IP address can be used on iLO3 firmware version 1.70 and later and also on iLO4 firmware version 1.40 and later.

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
It can be PSCredential, PSObject, list of PSCredential and/or PSObject.
Credential should  not be used along with Username/Password.

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

### -Category
Specifies the category of the output for which the health details are required.
Possible values are All ,Fan, FirmwareInfo, HealthSummary, MemoryInfo, NICInfo, PowerSupply, Processor, StorageConroller, DriveInfo, Temperature and VRM .
If All is specified, details of all the categories will be retrieved.
For iLO4, Firmware Version category is only available for iLO4 version 1.3 or later.

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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, Get-HPiLOServerInfo requires you to provide the values of all required parameters.

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
Possible value can be XML, RIBCL,PSObject or ExternalCommand.
Default value is PSObject.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### PSObject OR array of PSObject OR String OR array of String
You can pipe one IP address or a list of IP addresses as Strings, or one PSObject or list of PSObjects having the iLO details such as IPv6 Address, Hostname, Username and Password to access the iLO.

## OUTPUTS

### 
Use Get-Member to get details of fields in returned objects.

## NOTES

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)
