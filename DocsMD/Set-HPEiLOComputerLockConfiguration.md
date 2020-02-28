---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOComputerLockConfiguration

## SYNOPSIS
Configures the computer lock settings.

## SYNTAX

```
Set-HPEiLOComputerLockConfiguration [-Connection] <Connection[]> -LockType <String[]>
 [-KeySequence <String[][]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOComputerLockConfiguration cmdlet configures the Remote Console Computer Lock feature.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $key = ,@("L_ALT","L_CTRL")

PS C:\> ,$connection | Set-HPEiLOComputerLockConfiguration -LockType Custom -KeySequence $key
```

This example sets the Computer Lock Configuration either for iLO 4 server or iLO 5 server, in which the Connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Set-HPEiLOComputerLockConfiguration -Connection $connection -LockType Windows
```

This cmdlet sets the Computer Lock Configuration of iLO 4 and iLO 5 servers, in which the array of connection objects is passed as named parameter.

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

### -LockType
Lock option setting.
The supported values are Windows, Custom, and Disabled.
When Windows is given, KeySequence by default is set to Windows logo + L keys.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Windows, Custom, Disabled

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -KeySequence
When a hot key is pressed during a remote console session, the selected key combination (all keys pressed at the same time) will be transmitted in its place.
Each hot key represents a combination of up to five keys that are sent to the host server when the hot key is pressed.
Pass 'NONE' for unassigned items.
The supported values are:
ESC
L_ALT
R_ALT
L_SHIFT
R_SHIFT
L_CTRL
R_CTRL
L_GUI
R_GUI
INS
DEL
HOME
END
PG UP
PG DN
ENTER
TAB
BREAK
BACKSPACE
NUM PLUS
NUM MINUS
SCRL LCK
SYS RQ
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
'
,
-
.
/
0
1
2
3
4
5
6
7
8
9
;
=
\[
\
\]
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

```yaml
Type: String[][]
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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error for any missing required parameters.

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

### HPE.iLO.Response.Connection[]
System.String[]
System.String[][]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOComputerLockConfiguration]()

