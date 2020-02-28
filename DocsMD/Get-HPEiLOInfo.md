---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOInfo

## SYNOPSIS
Gets the basic unauthenticated iLO information using redfish API.

## SYNTAX

```
Get-HPEiLOInfo [-Address] <String[]> [[-Timeout] <UInt32[]>] [-DisableCertificateAuthentication]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOInfo cmdlet queries the redfish/v1/ root url and gets the unauthenticated details of the target iLO IP.
This cmdlet is supported only on iLO 4 and iLO 5.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $iLOInfo = Get-HPEiLOInfo 10.20.30.1

PS C:\> $iLOInfo

UUID       : c0e6700d-fc0d-5e8a-9b49-0939c3d1b985
DevSystem  : 
Manager    : HPE.iLO.Response.Redfish.Manager
Moniker    : HPE.iLO.Response.Redfish.Moniker
Sessions   : HPE.iLO.Response.Redfish.HpeiLOServiceExtSession
System     : 
Time       : 2018-08-31T06:17:40Z
IP         : 10.20.30.1
Hostname   : bl460cgen10-4.powershvpn.com
Status     : OK
StatusInfo :
```

### EXAMPLE 2
```
using Timeout parameter

PS C:\> $iLOInfo = Get-HPEiLOInfo 10.20.30.1 -Timeout 20

PS C:\> $iLOInfo

UUID       : c0e6700d-fc0d-5e8a-9b49-0939c3d1b985
DevSystem  : 
Manager    : HPE.iLO.Response.Redfish.Manager
Moniker    : HPE.iLO.Response.Redfish.Moniker
Sessions   : HPE.iLO.Response.Redfish.HpeiLOServiceExtSession
System     : 
Time       : 2018-08-31T06:17:40Z
IP         : 10.20.30.1
Hostname   : bl460cgen10-4.powershvpn.com
Status     : OK
StatusInfo :
```

### EXAMPLE 3
```
Address parameter value is IP Range

PS C:\> $iLOInfo = Get-HPEiLOInfo 10.20.30.1-3

PS C:\> $iLOInfo

UUID       : c0e6700d-fc0d-5e8a-9b49-0939c3d1b985
DevSystem  : 
Manager    : HPE.iLO.Response.Redfish.Manager
Moniker    : HPE.iLO.Response.Redfish.Moniker
Sessions   : HPE.iLO.Response.Redfish.HpeiLOServiceExtSession
System     : 
Time       : 2018-08-31T06:17:40Z
IP         : 10.20.30.1
Hostname   : bl460cgen10-4.powershvpn.com
Status     : OK
StatusInfo : 

UUID       : e0e6700d-fc0d-5e7a-9b49-0939c3d1b984
DevSystem  : 
Manager    : HPE.iLO.Response.Redfish.Manager
Moniker    : HPE.iLO.Response.Redfish.Moniker
Sessions   : HPE.iLO.Response.Redfish.HpeiLOServiceExtSession
System     : 
Time       : 2018-08-31T06:17:40Z
IP         : 10.20.30.2
Hostname   : bl460cgen10-2.powershvpn.com
Status     : OK
StatusInfo : 

UUID       : d0e6700d-fc0d-5e9a-9b49-0939c3d1b986
DevSystem  : 
Manager    : HPE.iLO.Response.Redfish.Manager
Moniker    : HPE.iLO.Response.Redfish.Moniker
Sessions   : HPE.iLO.Response.Redfish.HpeiLOServiceExtSession
System     : 
Time       : 2018-08-31T06:17:40Z
IP         : 10.20.30.3
Hostname   : dl360cgen10-3.powershvpn.com
Status     : OK
StatusInfo :
```

## PARAMETERS

### -Address
Specifies the target iLO IP or hostname of which the information has to be fetched using redfish call.
The Address also accepts IP value as a range.
Example: 10.1.10.1-30 attempts to get the iLO information for all the iLO ranging from 1-30 in the last octet of IP address 10.1.10.

Aliases: IP , HostName , iLOIP

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: IP, HostName, iLOIP

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Timeout
Timeout period for Http request.
Timeout period can be specified by the user where there can be a possible lag due to geographical distance between the client and server.
The value is specified in seconds.
Default value is 30 seconds.
If the default timeout is not long enough, no iLOs will be found and errors will be displayed.
The parameter accepts values in the range of 1 to 1800.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 30
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DisableCertificateAuthentication
If the DisableCertificateAuthentication switch parameter is present, the server certificate authentication is disabled during the Http request.
If not present, it will execute according to the global certificate authentication setting.
The default behavior is to authenticate server certificate.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String[]
## OUTPUTS

### HPE.iLO.Response.Redfish.iLOInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

