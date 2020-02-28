---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Test-HPEiLOConnection

## SYNOPSIS
The Test-HPEiLOConnection cmdlet checks if the connection to the target is valid.

## SYNTAX

```
Test-HPEiLOConnection [-Connection] <Connection[]> [<CommonParameters>]
```

## DESCRIPTION
The Test-HPEiLOConnection cmdlet checks if the connection to the target is valid.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Test-HPEiLOConnection 

IsConnected : True
IP          : 10.20.30.40
Hostname    : abcd.com
Status      : OK
StatusInfo  : HPE.iLO.Response.StatusInfo
```

This cmdlet tests the connection of iLO 4 or iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\ > $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Test-HPEiLOConnection -Connection $connection 

IsConnected : True
IP          : 10.20.30.1
Hostname    : abcd.com
Status      : OK
StatusInfo  : HPE.iLO.Response.StatusInfo

IsConnected : True
IP          : 10.20.30.2
Hostname    : qwerty.com
Status      : OK
StatusInfo  : HPE.iLO.Response.StatusInfo

IsConnected : False
IP          : 10.20.30.3
Hostname    : 
Status      : OK
StatusInfo  : HPE.iLO.Response.StatusInfo
```

This cmdlet shows the output on iLO 4 and iLO 5, in which an array of iLO connection objects is passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Disconnect-HPEiLO

PS C:\> $out = ,$connection | Test-HPEiLOConnection

IsConnected : False
IP          : 10.20.30.40
Hostname    : abcd.com
Status      : OK
StatusInfo  : HPE.iLO.Response.StatusInfo

PS C:\> $out.StatusInfo | fl

Category          : Connectivity
Message           : Disconnected
AffectedAttribute :
```

This cmdlet shows the output of the cmdlet when connection object to iLO is disconnected and Test-HPEiLOConnection cmdlet is executed post that in iLO 4 or iLO 5, in which the Connection object is passed as pipeline object.

## PARAMETERS

### -Connection
@{Text=}

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.TestConnection[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

