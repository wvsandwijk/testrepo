---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOUIDStatus

## SYNOPSIS
Gets the UID Status of the server.

## SYNTAX

```
Get-HPEiLOUIDStatus [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOUIDStatus cmdlet gets the state of the server UID for the server in which the iLO is operating.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOUIDStatus

IndicatorLED : Off
IP           : 10.20.30.40 
Hostname     : xyz.example.com
Status       : OK
StatusInfo   :
```

This cmdlet shows the output on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Get-HPEiLOUIDStatus -Connection  $connection

IndicatorLED : Off
IP           : 10.20.30.40
Hostname     : xyz.example.com
Status       : OK
StatusInfo   : 

IndicatorLED : Off
IP           : 10.20.30.41
Hostname     : xyz.example.com
Status       : OK
StatusInfo   : 

IndicatorLED : Off
IP           : 10.20.30.42
Hostname     : xyz.example.com
Status       : OK
StatusInfo   :
```

This cmdlet shows the output on iLO 4 and iLO 5 with array of connection object passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.UIDStatus[] or HPE.iLO.Response.Redfish.UIDStatus[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

