---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOIntegratedRemoteConsoleTrustSetting

## SYNOPSIS
Gets Integrated remote console or IRC Trust settings.

## SYNTAX

```
Get-HPEiLOIntegratedRemoteConsoleTrustSetting [-Connection] <Connection[]> [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Gets Integrated remote console trust settings of the target iLO.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
$con = Connect-HPEiLO 192.168.10.28, 192.168.10.31 admin admin123 -DisableCertificateAuthentication -Verbose

PS C:\Windows\system32> $i = $con | Get-HPEiLOIntegratedRemoteConsoleSetting

PS C:\Windows\system32> $i
TrustedCertificateRequired : No
IP                         : 192.168.10.28
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 : 

TrustedCertificateRequired : Yes
IP                         : 192.168.10.31
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 :
```

Gets IRC trust settings of two iLO 5 servers.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and accompanying Username and Password to log in to the iLO

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

### HPE.iLO.Response.Redfish.IntegratedRemoteConsoleSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOIntegratedRemoteConsoleTrustSetting]()

