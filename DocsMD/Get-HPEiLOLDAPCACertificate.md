---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOLDAPCACertificate

## SYNOPSIS
Gets LDAP CA certificate.

## SYNTAX

```
Get-HPEiLOLDAPCACertificate [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets LDAP CA certificate from iLO server.
Supported only on iLO5.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 192.168.10.31 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $ldapca = $con | Get-HPEiLOLDAPCACertificate

PS C:\> $ldapca

Issuer         : /DC=com/DC=powershvpn/CN=RootCApowershvpn-POWERSHELLVPN-CA
SerialNumber   : 77EDB29C82115E8349824B98AC3F9C2E
Subject        : /DC=com/DC=powershvpn/CN=RootCApowershvpn-POWERSHELLVPN-CA
ValidNotAfter  : 2019-01-03T06:50:13Z
ValidNotBefore : 2017-01-03T06:40:13Z
IP             : 192.168.10.31
Hostname       : bl460cgen10-03.powershvpn.com
Status         : OK
StatusInfo     :
```

Gets LDAP CA certificate from iLO5.

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.LDAPCACertificate[]
## NOTES

## RELATED LINKS

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

[http://www.hpe.com/servers/powershell]()

