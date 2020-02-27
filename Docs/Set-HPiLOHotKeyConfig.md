---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Set-HPiLOHotKeyConfig

## SYNOPSIS
Configures the remote console hot key settings in iLO.
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Set-HPiLOHotKeyConfig [-OutputType <String>] [-Username <Object>] [-Password <Object>] [-Credential <Object>]
 [-Force] [-Server <Object>] [-CtrlT <Object>] [-CtrlU <Object>] [-CtrlV <Object>] [-CtrlW <Object>]
 [-CtrlX <Object>] [-CtrlY <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPiLOHotKeyConfig cmdlet configures the remote console hot key settings in iLO.
You must have "Configure iLO" privilege to execute this command.
Supported hot keys -
The command enables you to define up to six different sets of hot keys for use during a Remote Console session.
Each hot key represents a combination of up to five different keys which are sent to the host machine whenever the hot key is pressed during a Remote Console session.
The selected key combination (all keys pressed at the same time) are transmitted in its place.
The following is the list of keys available to combine in a Remote Console hot key sequence.
ESC
L_ALT
R_ALT
L_SHIFT
R_SHIFT
INS
DEL
HOME
END
PG UP
PG DN
ENTER
TAB
BREAK
COMMA
F1
F2
F3
F4
F5
F6
F7
F8
F9
F10
F11
F12
SPACE
.
-
=
\[
\]
\
/
'
\`
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
;
L_CTRL
R_CTRL
NUM MINUS
NUM PLUS
SCRL LCK
BACKSPACE
PRINT SCRN
SYS RQ
1
2
3
4
5
6
7
8
9
0
NONE
L_GUI
R_GUI

Only Server, Username and Password will be prompted for if not provided. 
If parameter values are not provided they remain unchanged.
A list of servers(with or without port number) and corresponding username/password or credential and asset tag values must be provided as parameters.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Set-HPiLOHotKeyConfig -CtrlT $CtrlT -CtrlU $CtrlU -CtrlV $CtrlV
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
PS C:\> Set-HPiLOHotKeyConfig -Server $Server -CtrlT $CtrlT -CtrlU $CtrlU -CtrlV $CtrlV

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

$Server is passed as parameter to Set-HPiLOHotKeyConfig.
It can be a string array having iLO IP addresses in string format or it can be an array of PowerShell objects having iLO details including IP address. 
Because the username and passwords are not provided for the iLOs, you are asked to input these values.

### EXAMPLE 3
```
PS C:\> Set-HPiLOHotKeyConfig -Server $Server -Username $Username -Password $Password -CtrlT $CtrlT -CtrlU $CtrlU -CtrlV $CtrlV -CtrlW $CtrlW -CtrlX $CtrlX -CtrlY $CtrlY
```

This command shows that the list of iLO server addresses is passed as a parameter along with usernames, passwords and Hot key values.

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

### -CtrlT
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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

### -CtrlU
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_U="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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

### -CtrlV
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_V="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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

### -CtrlW
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_W="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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

### -CtrlX
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_X="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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

### -CtrlY
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_Y="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value type SPACE.

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
Without this parameter, Set-HPiLOHotKeyConfig requires you to provide the values of all required parameters.

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

