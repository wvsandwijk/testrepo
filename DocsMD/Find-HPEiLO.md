---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Find-HPEiLO

## SYNOPSIS
Find the array of iLO in a specified subnet.

## SYNTAX

```
Find-HPEiLO [-Range] <String[]> [-Timeout <UInt32[]>] [-Full] [<CommonParameters>]
```

## DESCRIPTION
The Find-HPEiLO cmdlet lists available iLOs in the subnet provided.
You must provide the subnet in which the iLOs have to be searched.
By default, it searches the default port in the iLOs.
You can provide a port number by appending a port number (":#") to the IP range.
The port number must be appended with an input IP address in case of a change in the HTTPS port number in iLO settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Find-HPEiLO "6.4.217"
```

This will list the IP addresses of iLOs ranging from 6.4.217.0 to 6.4.217.255.

### EXAMPLE 2
```
PS C:\> Find-HPEiLO "2607:f0d0:1002:51::0-FFFF"
```

This will list the IP addresses of iLOs ranging from 2607:f0d0:1002:51::0 to 2607:f0d0:1002:51::FFFF.

### EXAMPLE 3
```
PS C:\> Find-HPEiLO "6.4.217.93,103" -Timeout 200
```

This will list the IP addresses of iLOs 6.4.217.93 and 6.4.217.103.
The timeout for the ping response of each IP will be 200 seconds.

### EXAMPLE 4
```
PS C:\> Find-HPEiLO "6.4.217" -Timeout 1000
```

This will list the IP addresses of iLOs ranging from 6.4.217.0 to 6.4.217.255.
The timeout for the ping response of each IP will be 1000 seconds.

### EXAMPLE 5
```
PS C:\> Find-HPEiLO "6.4"
```

This will list the IP addresses of iLOs 6.4.0.0 to 6.4.0.255, 6.4.1.0 to 6.4.1.255 until 6.4.255.0 to 6.4.255.255.

### EXAMPLE 6
```
PS C:\> Find-HPEiLO "6.4:8080"
```

This will list the IP addresses of iLOs 6.4.0.0 to 6.4.0.255, 6.4.1.0 to 6.4.1.255 until 6.4.255.0 to 6.4.255.255.
Port 8080 is used when searching all the IP addresses.

### EXAMPLE 7
```
PS C:\> Find-HPEiLO "[2607:f0d0:1002:51::4]:8080" -Timeout 1000
```

This will list the IP addresses of iLOs 2607:f0d0:1002:51::4.
Port 8080 is used.
The timeout for the ping response of each IP will be 1000 seconds.

### EXAMPLE 8
```
PS C:\> Find-HPEiLO "6.4.217" -Full
```

This will list the IP addresses along with other details of iLOs ranging from 6.4.217.0 to 6.4.217.255.

### EXAMPLE 9
```
PS C:\> $out = Find-HPEiLO 10.20.30.1 -Full

PS C:\> $out

IP                    : 10.20.30.1
Hostname              : xyz.domain.com
HostSystemInformation : HPE.iLO.Response.HSI
ManagementProcessor   : HPE.iLO.Response.MP
BladeSystem           : HPE.iLO.Response.RIMPBladeSystem
Spatial               : HPE.iLO.Response.RIMPSpatial
Health                : HPE.iLO.Response.RIMPHealth

PS C:\> $out.ManagementProcessor

ST     : 1
PN     : Integrated Lights-Out 4 (iLO 4)
FWRI   : 2.44
BBLK   : 05/05/2012
HWRI   : ASIC: 12
SN     : ILOCN76130987      
UUID   : ILO000
IPM    : 1
SSO    : 1
PWRM   : UNKNOWN
ERS    : 0
EALERT : 1

PS C:\> $out.HostSystemInformation

SerialNumber : CN76130987      
SPN          : ProLiant BL465c Gen8
UUID         : 000
SP           : 0
cUUID        : 00000000-0000-4E43-3736-313330393837
Virtual      : HPE.iLO.Response.HSI_Virtual
ProductID    : 
NICS         : {HPE.iLO.Response.HSI_NIC, HPE.iLO.Response.HSI_NIC, 
               HPE.iLO.Response.HSI_NIC, HPE.iLO.Response.HSI_NIC...}

PS C:\> $out.BladeSystem | fl

Bay     : 4
Manager : HPE.iLO.Response.RIMPBladeSystemManager

PS C:\> $out.Spatial

DiscoveryRack   : Not Supported
DiscoveryData   : Server does not support Location Discovery Services
TagVersion      : 0
RackID          : 0
RackID_PN       : 0
RackDescription : 0
RackUHeight     : 0
UPosition       : 0
ULocation       : 0
cUUID           : 00000000-0000-4E43-3736-313330393837
UHeight         : 1000
UOffSet         : 2
Bay             : 4
EnclosurecUUID  : 53553930-3945-3432-4D56-4131 0 0 0 0 0 04B41545345455246

PS C:\> $out.Health | fl

Status : 2
```

This example shows the cmdlet output when the -Full parameter is used.

## PARAMETERS

### -Range
Specifies the lower parts of the IP addresses, which is the subnet where the iLOs are being searched.
For the IP address format "a.b.c.d," where a, b, c, d represent an integer from 0 to 255.

Aliases : IP,iLOIP

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: IP, iLOIP

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Timeout
Timeout period for ping request.
Timeout period can be specified by the user where there can be a possible lag due to geographical distance between the client and server.
The value is specified in seconds.
Default value is 30 seconds.
If the default timeout is not long enough, no iLOs will be found and no errors will be displayed.
The parameter accepts values in the range of 1 to 1800.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 30
Accept pipeline input: False
Accept wildcard characters: False
```

### -Full
Retrieves the complete data for further processing or is pipelined to another command or cmdlet.

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

### System.Object
## NOTES
For IP address format "a.b.c.d," where a, b, c, d represent an integer from 0 to 255, the Range parameter can have the following values:
a - Such as 10 in all IP addresses from 10.0.0.0 to 10.255.255.255;
a.b - Such as 10.44 in all IP addresses from 10.44.0.0 to 10.44.255.255;
a.b.c - Such as 10.44.111 in all IP addresses from 10.44.111.0 to 10.44.111.255;
a.b.c.d - Such as 10.44.111.222 in IP address 10.44.111.222.

Each division of the IP address can specify a range using a hyphen.
For example, 10.44.111.10-12 returns IP addresses 10.44.111.10, 10.44.111.11, and 10.44.111.12.
Each division of the IP address can specify a set using a comma.
For example, 10.44.111.10,12 returns IP addresses 10.44.111.10 and 10.44.11.12.
Both IPv4 and IPv6 ranges are supported.
Port number is optional.
Using port number 8888, the inputs are 10:8888, 10.44:8888, 10.44.111:8888, and 10.44.111.222:8888.
Without a port number, the default port in iLO is used.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

