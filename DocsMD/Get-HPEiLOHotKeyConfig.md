---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOHotKeyConfig

## SYNOPSIS
Gets hot keys available for use in remote console sessions.

## SYNTAX

```
Get-HPEiLOHotKeyConfig [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOHotKeyConfig cmdlet gets hot keys available for use in remote console sessions.
There are six hotkeys: CtrlT, CtrlU, CtrlV, CtrlW, CtrlX, CtrlY.
Each hot key represents a combination of up to five different keys (for example, CtrlT="Ctrl,Alt,Esc,F2,F4").
If a particular key in a hot key is not set, it is displayed as 'NONE' in the output (for example, CtrlT : L_CTRL,L_ALT,ESC,NONE,NONE).

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Get-HPEiLOHotKeyConfig

CtrlT      : a,a,b,b,c
CtrlU      : a,a,b,b,c
CtrlV      : a,a,b,b,c
CtrlW      : a,a,b,b,c
CtrlX      : NONE,NONE,NONE,NONE,NONE
CtrlY      : NONE,NONE,NONE,NONE,NONE
IP         : 10.20.30.1
Hostname   : abcd.com
Status     : OK
StatusInfo :
```

This cmdlet shows the output on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOHotKeyConfig -Connection $connection

CtrlT      : a,a,b,b,c
CtrlU      : a,a,b,b,c
CtrlV      : a,a,b,b,c
CtrlW      : a,a,b,b,c
CtrlX      : NONE,NONE,NONE,NONE,NONE
CtrlY      : NONE,NONE,NONE,NONE,NONE
IP         : 10.20.30.1
Hostname   : abcd.com
Status     : OK
StatusInfo : 

CtrlT      : NONE,NONE,NONE,NONE,NONE
CtrlU      : NONE,NONE,NONE,NONE,NONE
CtrlV      : NONE,NONE,NONE,NONE,NONE
CtrlW      : NONE,NONE,NONE,NONE,NONE
CtrlX      : NONE,NONE,NONE,NONE,NONE
CtrlY      : NONE,NONE,NONE,NONE,NONE
IP         : 10.20.30.2
Hostname   : xyz.example.com
Status     : OK
StatusInfo :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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
## OUTPUTS

### HPE.iLO.Response.RIBCL.HotKeyConfig[] or HPE.iLO.Response.Redfish.HotKeyConfig[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOHotKeyConfig]()

