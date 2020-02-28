---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSpatial

## SYNOPSIS
Gets the location information and system data with Asset Manager to obtain more precise and complete asset data.

## SYNTAX

```
Get-HPEiLOSpatial [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSpatial cmdlet gets the location information and system data with Asset Manager to obtain more precise and complete asset data.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOSpatial

Platform        : BLADE
DiscoveryRack   : Not Supported
DiscoveryData   : Server does not support Location Discovery Services
TagVersion      : 0
RackID          : 0
RackIDPN        : 0
RackCUUID       : 
RackDescription : 0
RackUHeight     : 0
UPosition       : 0
ULocation       : 0
CUUID           : 00000000-0000-4E43-3736-313330393837
UHeight         : 10.00
UOffset         : 2
Bay             : 4
DeviceUPosition : 0
EnclosureCUUID  : 53553930-3945-3432-4D56-4131 0 0 0 0 1 2 030
EnclosureSN     : USE924MVA1
IP              : 10.20.30.40
Hostname        : abcd.com
Status          : OK
StatusInfo      :
```

This cmdlet gets the Spatial information of the iLO target for iLO 4 server and the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOSpatial -Connection $connection 

Platform        : BLADE
DiscoveryRack   : Not Supported
DiscoveryData   : Server does not support Location Discovery Services
TagVersion      : 0
RackID          : 0
RackIDPN        : 0
RackCUUID       : 
RackDescription : 0
RackUHeight     : 0
UPosition       : 0
ULocation       : 0
CUUID           : 00000000-0000-4E43-3736-313330393837
UHeight         : 10.00
UOffset         : 2
Bay             : 4
DeviceUPosition : 0
EnclosureCUUID  : 53553930-3945-3432-4D56-4131 0 0 0 0 1 2 030
EnclosureSN     : USE924MVA1
IP              : 10.20.30.40
Hostname        : abcd.com
Status          : OK
StatusInfo      : 

Platform        : DL/ML
DiscoveryRack   : Not Supported
DiscoveryData   : Server does not detect Location Discovery Services
TagVersion      : 0
RackID          : 0
RackIDPN        : 0
RackCUUID       : 
RackDescription : 0
RackUHeight     : 0
UPosition       : 0
ULocation       : 0
CUUID           : 38334C44-0030-584D-5135-34353043424A
UHeight         : 2.00
UOffset         : 0
Bay             : 
DeviceUPosition : 0
EnclosureCUUID  : 
EnclosureSN     : 
IP              : 10.20.30.41
Hostname        : xyz.example.com
Status          : OK
StatusInfo      :
```

This cmdlet shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.iLO4.Spatial[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

