---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOAHSStatus

## SYNOPSIS
Gets the AHS status.

## SYNTAX

```
Get-HPEiLOAHSStatus [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOAHSStatus cmdlet gets the value of the Active Health System status.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Get-HPEiLOAHSStatus

AHSEnabled              : No
AHSHardwareEnabled      : Yes
AHSTemporaryHoldEnabled : No
IP                      : 10.20.30.1
Hostname                : abcd.com
Status                  : OK
StatusInfo              :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Get-HPEiLOAHSStatus

AHSEnabled              : No
AHSHardwareEnabled      : Yes
AHSSoftwareEnabled      : No
AHSTemporaryHoldEnabled : No
IP                      : 10.20.30.1
Hostname                : xyz.example.com
Status                  : OK
StatusInfo              :
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOAHSStatus -Connection $connection 

AHSEnabled              : No
AHSHardwareEnabled      : Yes
AHSTemporaryHoldEnabled : No
IP                      : 10.20.30.1
Hostname                : abcd.com
Status                  : OK
StatusInfo              : 

AHSEnabled              : No
AHSHardwareEnabled      : Yes
AHSSoftwareEnabled      : No
AHSTemporaryHoldEnabled : No
IP                      : 10.20.30.2
Hostname                : xyz.example.com
Status                  : OK
StatusInfo              :
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

### HPE.iLO.Response.RIBCL.AHSStatus[] or HPE.iLO.Response.Redfish.AHSStatus[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOAHSStatus]()

[Connect-HPEiLO]()

