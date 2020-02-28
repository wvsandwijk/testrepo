---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOHotKeyConfig

## SYNOPSIS
Configures the remote console hot key settings in iLO.

## SYNTAX

```
Set-HPEiLOHotKeyConfig [-Connection] <Connection[]> [-CtrlT <String[][]>] [-CtrlU <String[][]>]
 [-CtrlV <String[][]>] [-CtrlW <String[][]>] [-CtrlX <String[][]>] [-CtrlY <String[][]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOHotKeyConfig cmdlet configures the remote console hot key settings in iLO. 
The command enables you to define up to six different sets of hot keys for use during a Remote Console session.
Each hot key represents a combination of up to five different keys which are sent to the host machine whenever the hot key is pressed during a Remote Console session.
The selected key combination (all keys pressed at the same time) are transmitted in its place.
The following is the list of keys available to combine in a Remote Console hot key sequence.

Supported hot keys:
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

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $key1 = ,@("L_ALT","L_CTRL")

PS C:\> $key2 = ,@("L_CTRL,L_ALT,ESC,F2,F4")

PS C:\> ,$connection | Set-HPEiLOHotKeyConfig -CtrlT $key1 -CtrlU $key2
```

This command shows the output on iLO 4 or iLO 5 and the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> $key1 = ,@("L_ALT","L_CTRL")

PS C:\> $key2 = ,@("L_CTRL,L_ALT,ESC,F2,F4")

PS C:\> Set-HPEiLOHotKeyConfig -Connection $connection -CtrlT $key1 -CtrlU $key2
```

This cmdlet shows the output on iLO 4 and iLO 5 when an array of connection objects is passed as named parameter.

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

### -CtrlT
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### -CtrlU
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### -CtrlV
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### -CtrlW
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### -CtrlX
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### -CtrlY
Separated multiple setting values with commas.
The parameter's value is optional.
If a parameter is not specified, then the parameter value remains as previously set.
The hot key can have up to five selections (for example, CTRL_T="L_CTRL,L_ALT,ESC,F2,F4").
Do not use spaces (" ") in the values; to set a space in a value, type SPACE.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[][]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOHotKeyConfig]()

