---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSNTPSetting

## SYNOPSIS
Gets the SNTP settings of the server.

## SYNTAX

```
Get-HPEiLOSNTPSetting [-Connection] <Connection[]> [-InterfaceType <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSNTPSetting cmdlet retrieves the SNTP setting details of the server.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOSNTPSetting

PropagateTimetoHost : Disabled
SNTPServer          : {, }
TimeZone            : Atlantic/Reykjavik
DHCPv4NTPServer     : Disabled
DHCPv6NTPServer     : Enabled
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          :
```

This cmdlet gets the SNTP setting of the iLO target for iLO 4 server and the connection is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = Get-HPEiLOSNTPSetting -Connection $connection -InterfaceType Shared

PS C:\> $out

PropagateTimetoHost : Disabled
SNTPServer          : {, }
TimeZone            : 
DHCPv4NTPServer     : Disabled
DHCPv6NTPServer     : Enabled
SupportedTimeZone   : {HPE.iLO.Response.Redfish.TimeZoneList, HPE.iLO.Response.Redfish.TimeZoneList, 
                      HPE.iLO.Response.Redfish.TimeZoneList, HPE.iLO.Response.Redfish.TimeZoneList...}
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          :
```

This cmdlet gets the SNTP setting info of the iLO target for iLO 5 server and the connection is passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOSNTPSetting -Connection $connection 

PropagateTimetoHost : Disabled
SNTPServer          : {, }
TimeZone            : Atlantic/Reykjavik
DHCPv4NTPServer     : Disabled
DHCPv6NTPServer     : Enabled
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          : 

PropagateTimetoHost : Disabled
SNTPServer          : {, }
TimeZone            : 
DHCPv4NTPServer     : Disabled
DHCPv6NTPServer     : Enabled
SupportedTimeZone   : {HPE.iLO.Response.Redfish.TimeZoneList, HPE.iLO.Response.Redfish.TimeZoneList, 
                      HPE.iLO.Response.Redfish.TimeZoneList, HPE.iLO.Response.Redfish.TimeZoneList...}
IP                  : 10.20.30.41
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :
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

### -InterfaceType
InterfaceType specifies the type of network connection present in the manager.
The possible values are Dedicated and Shared.
This parameter is supported only on iLO 5 servers.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Dedicated, Shared

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.SNTPSetting[] or HPE.iLO.Response.Redfish.SNTPSetting[]
## NOTES
.
In case of iLO 5, when InterfaceType is not provided, default setting will be retrieved.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOSNTPSetting]()

[Connect-HPEiLO]()

