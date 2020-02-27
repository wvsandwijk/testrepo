---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOVMStatus

## SYNOPSIS
Sets the virtual media drive status.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOVMStatus [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-Device <Object>] [-VMBootOption <Object>] [-VMWriteProtect <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOVMStatus cmdlet sets the virtual media drive status.
All the parameters in the command are optional.
You must purchase the iLO Advanced license to enable this feature.
You must have Virtual Media privilege to execute this command
A list of servers(with or without port number) and corresponding username/password or credential values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOVMStatus -Device $Device -VMBootOption $VMBootOption -VMWriteProtect $VMWriteProtect
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
```

This command shows a basic usage scenario where only the cmdlet name is entered.
You are asked if the same credentials are to be used for multiple input servers or if separate credentials have to be collected for each server.
Then you are asked if the same values for parameters are to be passed to the cmdlets or separate parameters are going to be used for each server.
A list of iLO details is passed to the cmdlet in the form of PowerShell object or list of PowerShell objects or list of IP addresses of the iLO.

### EXAMPLE 2
```
PS C:\> Set-HPiLOVMStatus -Server $Server -Device $Device -VMBootOption $VMBootOption -VMWriteProtect $VMWriteProtect

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

$Server is passed as parameter to Set-HPiLOVMStatus.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Set-HPiLOVMStatus -Server $Server -Username $Username -Password $Password -Device $Device -VMBootOption $VMBootOption -VMWriteProtect $VMWriteProtect
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

### -Device
Specifies the Virtual Media device target.
The possible values are FLOPPY or CDROM.
If the Device is not specified, FLOPPY is assumed.
The value is not case-sensitive.

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

### -VMBootOption
Specifies the boot option parameter for the Virtual Media.
The possible values are BOOT_ALWAYS, BOOT_ONCE, or NO_BOOT.
These values control how the Virtual Media device behaves during the boot phase of the server.
Setting these values does not affect the current state of the Virtual Media device.
These settings only take effect if the Virtual Media device is connected at server boot.
• BOOT_ALWAYS sets the VMBootOption to BOOT_ALWAYS.
The Virtual Media device is always connected during server boot.
The Virtual Media device is not connected immediately when the VMBootOption is set.
The Virtual Media device is connected on the next server boot after setting of the VMBootOption. 
• BOOT_ONCE sets the VMBootOption to BOOT_ONCE.
The Virtual Media device is connected during the next server boot, but on any subsequent server boots, it does not connect.
The BOOT_ONCE option is intended to boot one time to the Virtual Media device, use that device while the server is running, and then not have the Virtual Media device available on subsequent server reboots.
The Virtual Media device is not connected immediately when the VMBootOption is set.
The Virtual Media device is connected on the next server boot following the setting of the VMBootOption.
After the server has booted once with the Virtual Media device connected, on the subsequent server reboot, the Virtual Media device does not connect and the following Virtual Media device settings reset to their default values: 
    - BOOT_OPTION=NO_BOOT
    - IMAGE_INSERTED = NO
• NO_BOOT sets the VMBootOption to NO_BOOT.
The Virtual Media device is not connected during the next server boot.
The Virtual Media device is not disconnected immediately when the VMBootOption is set.
The Virtual Media device is disconnected on the next server boot following the setting of the VMBootOption.
After the server has booted, the Virtual Media device does not connect and the following Virtual Media device settings reset to their default values:
    - BOOT_OPTION = NO_BOOT
    - IMAGE_INSERTED = NO
In addition to the VMBootOption, CONNECT and DISCONNECT are also possible values.
The CONNECT and DISCONNECT settings can be used to control the Virtual Media devices in the same way that they are controlled in the Virtual Media applet.
Whenever the CONNECT or DISCONNECT parameters are set, the Virtual Media device immediately connects or disconnects, respectively, to the server. 
• CONNECT sets the VMBootOption to CONNECT.
The Virtual Media device is immediately connected to the server.
Setting the VMBootOption to CONNECT is equivalent to clicking the device Connect button on the Virtual Media Applet.
After setting the VMBootOption to CONNECT, the Get-HPiLOVMStatus command shows the VM_BOOT_OPTION as BOOT_ALWAYS.
This is by design and indicates that the Virtual Media device is connected like the Virtual Media device in the applet which is always connected during all server boots.
• DISCONNECT sets the VMBootOption to DISCONNECT.
The Virtual Media device is immediately disconnected from the server.
Setting the VMBootOption to DISCONNECT is equivalent to clicking the device Disconnect button on the Virtual Media Applet.
In addition, setting the VMBootOption to DISCONNECT is equivalent to issuing the Dismount-HPiLOVirtualMedia command.
When the VMBootOption is set to DISCONNECT, the Virtual Media device does not connect and the following Virtual Media device settings are reset to their default values:
    - BOOT_OPTION = NO_BOOT
    - IMAGE_INSERTED = NO

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

### -VMWriteProtect
Sets the write protect flag value for the Virtual Floppy.
This value is not significant for the Virtual Media CD-ROM.
The possible values are Y, Yes, Enable and On to enable VM write protect or N, No, Disable and Off to disable VM write protect.

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
Without this parameter, Set-HPiLOVMStatus requires you to provide the values of all required parameters.

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

