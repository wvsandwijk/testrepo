---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSSLCertificateInfo

## SYNOPSIS
Gets the SSL certificate information.

## SYNTAX

```
Get-HPEiLOSSLCertificateInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSSLCertificateInfo cmdlet gets the SSL certificate information.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOSSLCertificateInfo

PS C:\> $out

Issuer         : DC = com, DC = powershvpn, CN = RootCApowershvpn-POWERSHELLVPN-CA
SerialNumber   : 5b:00:00:00:74:5e:78:23:12346:1a:12:3d:00:02:00:00:00:74
Subject        : C = US, ST = Texas, L = Houston, O = Hewlett-Packard Company, OU = ISS, CN = ILO
ValidNotAfter  : 2019-01-03T06:50:13Z
ValidNotBefore : 2018-02-08T07:53:37Z
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     :
```

This cmdlet gets the SSl certificate information of the iLO target with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOSSLCertificateInfo -Connection $connection

Issuer         : DC = com, DC = powershvpn, CN = RootCApowershvpn-POWERSHELLVPN-CA
SerialNumber   : 5b:00:00:00:74:5e:78:23:12346:1a:12:3d:00:02:00:00:00:74
Subject        : C = US, ST = Texas, L = Houston, O = Hewlett-Packard Company, OU = ISS, CN = ILO
ValidNotAfter  : 2019-01-03T06:50:13Z
ValidNotBefore : 2018-02-08T07:53:37Z
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     :

Issuer         : DC = com, DC = powershvpn, CN = RootCApowershvpn-POWERSHELLVPN-CA
SerialNumber   : 5b:00:00:00:74:5e:78:23:12346:1a:12:3d:00:02:00:00:00:74
Subject        : C = US, ST = Texas, L = Houston, O = Hewlett-Packard Company, OU = ISS, CN = ILO
ValidNotAfter  : 2019-01-03T06:50:13Z
ValidNotBefore : 2018-02-08T07:53:37Z
IP             : 10.20.30.41
Hostname       : xyz.com
Status         : OK
StatusInfo     :
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

### HPE.iLO.Response.Redfish.SSLCertificateInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Import-HPEiLOCertificate]()

[Start-HPEiLOCertificateSigningRequest]()

[Get-HPEiLOCertificateSigningRequest]()

