---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNTPSetting

## SYNOPSIS
Sets the SNTP setting

## SYNTAX

```
Set-HPEiLOSNTPSetting [-Connection] <Connection[]> [-InterfaceType <String[]>] [-DHCPv4NTPServer <String[]>]
 [-DHCPv6NTPServer <String[]>] [-PropagateTimetoHost <String[]>] [-SNTPServer <String[][]>]
 [-Timezone <String[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOSNTPSetting cmdlet sets the SNTP settings of the server.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $sntp = ,@("1.1.1.1","2.2.2.2")

PS C:\> ,$connection | Set-HPEiLOSNTPSetting -DHCPv4NTPServer Disabled -DHCPv6NTPServer Disabled -PropagateTimetoHost Enabled -Timezone America/Anchorage -SNTPServer $sntp
```

This example sets the SNTP setting on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> $sntp = ,@("1.1.1.1","2.2.2.2")

PS C:\> ,$connection | Set-HPEiLOSNTPSetting -InterfaceType Dedicated -DHCPv4NTPServer Disabled -DHCPv6NTPServer Disabled -PropagateTimetoHost Enabled -Timezone America/Anchorage -SNTPServer $sntp
```

This example sets the SNTP setting on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> $sntp = ,@("1.1.1.1","2.2.2.2")

PS C:\> Set-HPEiLOSNTPSetting -Connection $connection -DHCPv4NTPServer Disabled -DHCPv6NTPServer Disabled -PropagateTimetoHost Enabled -Timezone America/Anchorage -SNTPServer $sntp
```

This cmdlet sets the SNTP setting on iLO 4 and iLO 5 with an array of connection object passed as named parameter.

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

### -DHCPv4NTPServer
Determines whether iLO has to get the SNTP time servers and time zone from the DHCPv4 server or whether the user enters that information manually.
The possible values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DHCPv6NTPServer
Determines whether iLO has to get the SNTP time servers and time zone from the DHCPv6 server or whether the user enters that information manually.
The possible values are Enabled and Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PropagateTimetoHost
Determines whether iLO sets the system host time to match the iLO time.
Valid values are Enabled to enable this feature or Disabled to disable this feature.
If enabled, the propagation time set occurs whenever the iLO is cold-booted.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SNTPServer
Specifies the IP address of an IPv4 or IPv6 SNTP server or the FQDN of an SNTPserver.
The FQDN must adhere to the DNS standard, For example, time.nist.gov.
The iLO firmware contacts tPrimary Time for the UTC time.
If iLO is unable to contact Primary Time server, it attempts to contact the Secondary Time Server.
This parameter is only relevant if DHCPv4NTPServer and DHCPv6NTPServer are set to Disabled.
If an empty string is entered, the current value is deleted.

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

### -Timezone
Specifies the current time zone from the Olson database.
The text of the time zone name must be entered exactly as it appears in the SNTP Settings time zone list box, (minus the GMT offset).
America/Anchorage or Europe/Zurich are two examples of a valid time zone.

```yaml
Type: String[]
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
System.String[]
System.String[][]
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOSNTPSetting]()

