---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOEmbeddedMedia

## SYNOPSIS
Gets the EmbeddedMedia information.

## SYNTAX

```
Get-HPEiLOEmbeddedMedia [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOEmbeddedMedia gets EmbeddedMedia information.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOEmbeddedMedia

PS C:\> $out

SDCard     : HPE.iLO.Response.RIBCL.iLO 4.SDCard
IP         : 10.20.30.40
Hostname   : xyz.example.com
Status     : OK
StatusInfo : 

PS C:\> $out.SDCard | fl

Status : Absent
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOEmbeddedMedia

PS C:\> $out

SDCard     : HPE.iLO.Response.Redfish.SDCard
Controller : HPE.iLO.Response.Redfish.Controller
IP         : 10.20.30.40 
Hostname   : xyz.example.com
Status     : OK
StatusInfo : 

PS C:\> $out.SDCard | fl

Status : Absent
SizeMB :

PS C:\> $out.Controller | fl

CurrentFirmwareVersion : 02.10.00
Health                 : OK
State                  : Enabled
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOEmbeddedMedia -Connection $connection 

SDCard     : HPE.iLO.Response.RIBCL.iLO 4.SDCard
IP         : 10.20.30.40
Hostname   : xyz.example.com
Status     : OK
StatusInfo : 

SDCard     : HPE.iLO.Response.Redfish.SDCard
Controller : HPE.iLO.Response.Redfish.Controller
IP         : 10.20.30.41
Hostname   : xyz.example.com
Status     : OK
StatusInfo :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.iLO4.EmbeddedMedia[] or HPE.iLO.Response.Redfish.EmbeddedMedia[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

