---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Import-HPEiLOLDAPCACertificate

## SYNOPSIS
Imports LDAP CA certificate into iLO5 server only.

## SYNTAX

```
Import-HPEiLOLDAPCACertificate [-Connection] <Connection[]> -Certificate <String[]> [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
During LDAP authentication, iLO validates the directory server certificate if the CA certificate is already imported.
For successful certificate validation, make sure that you import the correct CA certificate.
If certificate validation fails, iLO login is denied and an event is logged.
If no CA certificate is imported, the directory server certificate validation step is skipped.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $con = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $cert = Get-Content -Path "C:\Users\admin\Downloads\cacertificate.cer" -raw 

PS C:\> $out = $con | Import-HPEiLOLDAPCACertificate -Certificate $cert
```

Trying to import LDAP CA certificate into iLO5 server.
Supported only on iLO5.

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

### -Certificate
Specifies the full certificate including the full header and full footer of the certificate.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this parameter will cause an error prompt for any required parameter that is missing.

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

### HPE.iLO.Response.Connection[]
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[Connect-HPEiLO]()

[http://www.hpe.com/servers/powershell]()

[Disconnect-HPEiLO]()

[Get-HPEiLOLDAPCACertificate]()

