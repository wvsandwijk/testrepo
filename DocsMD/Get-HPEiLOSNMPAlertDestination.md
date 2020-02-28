---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSNMPAlertDestination

## SYNOPSIS
Gets the SNMP alert destination.

## SYNTAX

```
Get-HPEiLOSNMPAlertDestination [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSNMPAlertDestination gets the SNMP alert destination details.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSNMPAlertDestination

PS C:\> $out

SNMPAlertDestination : {HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert, 
                       HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert, 
                       HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert}
IP                     : 10.20.30.1
Hostname               : xyz.example.com
Status                 : OK
StatusInfo             : 

PS C:\> $out.SNMPv3AlertDestination | fl

ID                   : 1
AlertDestination     : 2.2.2.2
TrapCommunity        : 2.2.2.2
TrapCommunityVersion : v2c

ID                   : 2
AlertDestination     : 8.8.8.8
TrapCommunity        : 5.5.5.5
TrapCommunityVersion : 

ID                   : 3
AlertDestination     : 
TrapCommunity        : 
TrapCommunityVersion :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOSNMPAlertDestination

PS C:\> $out

SNMPAlertDestination : {HPE.iLO.Response.Redfish.SNMPv3Alert, HPE.iLO.Response.Redfish.SNMPv3Alert, 
                       HPE.iLO.Response.Redfish.SNMPv3Alert, HPE.iLO.Response.Redfish.SNMPv3Alert...}
IP                   : 10.20.30.1
Hostname             : abcd.com
Status               : OK
StatusInfo           : 

PS C:\> $out.SNMPAlertDestination

ID               : 1
SNMPv3User       : amdin123223
AlertDestination : 2.2.2.2
AlertProtocol    : SNMPv3Trap
TrapCommunity    : 1.1.1.1

ID               : 2
SNMPv3User       : amdin123223
AlertDestination : 3.3.3.3
AlertProtocol    : SNMPv3Inform
TrapCommunity    : 5.5.5.5

ID               : 3
SNMPv3User       : amdin123223
AlertDestination : 3.3.3.3
AlertProtocol    : SNMPv3Trap
TrapCommunity    : 5.5.5.5

ID               : 4
SNMPv3User       : 
AlertDestination : 5
AlertProtocol    : SNMPv1Trap
TrapCommunity    : 

ID               : 5
SNMPv3User       : amdin123223
AlertDestination : 4.4.4.4
AlertProtocol    : SNMPv3Trap
TrapCommunity    : 1.1.1.1
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOSNMPAlertDestination -Connection $connection

SNMPAlertDestination : {HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert, 
                       HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert, 
                       HPE.iLO.Response.RIBCL.iLO4.SNMPv3Alert}
IP                     : 10.20.30.1
Hostname               : xyz.example.com
Status                 : OK
StatusInfo             : 

SNMPAlertDestination : {HPE.iLO.Response.Redfish.SNMPv3Alert, HPE.iLO.Response.Redfish.SNMPv3Alert, 
                       HPE.iLO.Response.Redfish.SNMPv3Alert, HPE.iLO.Response.Redfish.SNMPv3Alert...}
IP                   : 10.20.30.2
Hostname             : abcd.com
Status               : OK
StatusInfo           :
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

### HPE.iLO.Response.RIBCL.iLO4.SNMPAlertDestinationInfo[] or HPE.iLO.Response.Redfish.SNMPAlertDestinationInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOSNMPAlertDestination]()

[Add-HPEiLOSNMPAlertDestination]()

[Remove-HPEiLOSNMPAlertDestination]()

