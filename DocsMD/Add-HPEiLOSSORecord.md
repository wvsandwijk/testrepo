---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Add-HPEiLOSSORecord

## SYNOPSIS
Add a new HPE SIM Single Sign-On (SSO) Server Record.

## SYNTAX

```
Add-HPEiLOSSORecord [-Connection] <Connection[]> -SSOInputType <String[]> -SSOInputValue <String[]>
 [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Add-HPEiLOSSORecord cmdlet adds an HPE SIM Single Sign-On (SSO) server record to the end of the database on iLO.
Duplicate records might be rejected and generate an error.

There are three ways to add an HPE SIM Trusted Server record using the Add-HPEiLOSSOServer command:

.
ImportFromDNSName - The server can be specified by network name (requires SSO trust level set to trust by name or trust all, but is not supported for trust by certificate).
Use the fully qualified network name.

.
ImportFromNetwork - The server certificate can be imported by iLO (the LOM processor requests the certificate from the specified HPE SIM server using anonymous HTTP request).
The iLO processor must be able to contact the HPE SIM server on the network at the time This cmdlet is processed for this method to work.

.
DirectImportCertificate - The server certificate can be directly installed on iLO.
However, you must obtain the x.509 certificate in advance.
This method enables you to configure the iLO before placing it on the network with the HPE SIM server.
The method also enables you to verify the contents of the HPE SIM server certificate.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOSSORecord -SSOInputType ImportFromNetwork -SSOInputValue "hp01.company.net"
```

This cmdlet adds the SSO record to iLO from Network.
The connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Add-HPEiLOSSORecord -SSOInputType ImportFromDNSName -SSOInputValue abcd.com
```

This cmdlet adds the SSO record to iLO from DNSName of server.
The connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $cert = @"
-----BEGIN CERTIFICATE-----
abcd1234certificate
-----END CERTIFICATE-----
"@

PS C:\> ,$connection | Add-HPEiLOSSORecord -SSOInputType DirectImportCertificate -SSOInputValue $cert
```

This cmdlet adds the SSO record directly to the iLO.
The connection object is passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> Add-HPEiLOSSORecord -Connection $connection -SSOInputType ImportFromNetwork -SSOInputValue "hp01.company.net"
```

This cmdlet adds a new SSO record to the iLO user accounts.
The array of connection objects is passed as named parameter.

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

### -SSOInputType
Specifies the method of adding an HPE SIM SSO server record by network Name, indirect import, or direct certificate import.
The supported values are DirectImportCertificate, ImportFromNetwork, and ImportFromDNSName.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: DirectImportCertificate, ImportFromNetwork, ImportFromDNSName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SSOInputValue
Specifies the server name in case of adding the SSO record by network name if SSOInputType is set as ImportFromNetwork.
Specifies the certificate value if SSOType is set as DirectImportCertificate.
Specifies the DNS name if SSOType is set as ImportFromDNSName.

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
System.String
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOSSOSetting]()

[Set-HPEiLOSSOSetting]()

[Remove-HPEiLOSSORecord]()

