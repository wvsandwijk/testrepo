---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOFederationMulticast

## SYNOPSIS
Enables iLO Federation and sets iLO Federation multicast operations.

## SYNTAX

```
Set-HPEiLOFederationMulticast [-Connection] <Connection[]> [-AnnouncementInterval <String[]>]
 [-DiscoveryAuthentication <String[]>] [-FederationAuthentication <String[]>] [-MulticastScope <String[]>]
 [-MulticastTTL <Int32[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOFederationMulticast cmdlet enables or disables iLO Federation, and sets the iLO Federation multicast options, including Multicast Discovery, Multicast Announcement Interval, IPv6Multicast Scope, and Multicast TTL.
The iLO Federation cmdlets get data from and send commands to one or more iLOs.

While enabling this setting, you can also specify the features that you want the group to access.
In the iLO Federation -\> Group Configuration you can create your own group along with the group key (that is required for other iLOs to join the existing group as a security measure).
On creation of the group, you can enable the multicast options: Group Account Privileges.
These privilege settings can be used to deny or allow access to the following iLO features (group and individual iLO):

• Administrator user Accounts
• Remote Access Control
• Virtual Power and Reset
• Virtual Media
• Configure iLO Settings
• Login Privilege

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOFederationMulticast -AnnouncementInterval 120 -DiscoveryAuthentication Yes -FederationAuthentication No -MulticastScope Link -MulticastTTL 200
```

This cmdlet sets iLO Federation multicast operations on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.2 -Username admin -Password admin123

PS C:\> Set-HPEiLOFederationMulticast -Connection $connection -AnnouncementInterval 120 -DiscoveryAuthentication Yes -FederationAuthentication Yes -MulticastScope Site -MulticastTTL 200
```

This cmdlet sets iLO Federation multicast operations on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOFederationMulticast -AnnouncementInterval 120 -DiscoveryAuthentication Yes -FederationAuthentication Yes -MulticastScope Site -MulticastTTL 200
```

This cmdlet sets iLO Federation multicast operations on iLO 4 and iLO 5 with an array of connection objects passed as pipeline input.

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

### -AnnouncementInterval
Sets the number of seconds between each multicast availability announcement on the network.
Valid values are Disabled, 30, 60, 120, 300, 600, 900, and 1800 seconds.
When disabled, iLO Federation features are unavailable.
When AnnouncementInterval is set to Disabled, then FederationAuthentication is set to No by default.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, 30, 60, 120, 300, 600, 900, 1800

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DiscoveryAuthentication
Enables or disables iLO Discovery Authentication.
The possible values are Yes and No.
This parameter is mandatory.
When set to No, other parameters cannot be used.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FederationAuthentication
Enables or disables iLO Federation authentication.
The possible values are Yes and No.
To set FederationAuthenticaton, set AnnouncementInterval to a value other than Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MulticastScope
Sets the scope of multicast discovery.
Valid values are Link, Site, and Organization.
All devices in an iLO Federation group must have the same scope to properly enable peer discovery.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Site, Link, Organization

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MulticastTTL
Sets the time to live, limiting the number of switches that can be traversed before the multicast discovery is stopped.
Valid values are between 1 and 255.
All devices in a federated group must have the same TTL to properly enable peer discovery.

```yaml
Type: Int32[]
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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error for any missing required parameters.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOFederationMulticast]()

