---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOEncryptionSetting

## SYNOPSIS
Gets the current Security encryption setting.

## SYNTAX

```
Get-HPEiLOEncryptionSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOEncryptionSetting cmdlet gets the current Security encryption setting.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOEncryptionSetting

SecurityState : FIPS
IP            : 10.20.30.1
Hostname      : xyz.example.com
Status        : OK
StatusInfo    :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOEncryptionSetting -Connection $connection

SecurityState           : Production
SupportedSecurityState  : {Production, HighSecurity, FIPS}
CurrentEncryptionCipher : ECDHE-RSA-AES256-SHA384
IP                      : 10.20.30.1
Hostname                : abcd.com
Status                  : OK
StatusInfo              :
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20,30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOEncryptionSetting

SecurityState : FIPS
IP            : 10.20.30.1
Hostname      : xyz.example.com
Status        : OK
StatusInfo    : 

SecurityState           : Production
SupportedSecurityState  : {Production, HighSecurity, FIPS}
CurrentEncryptionCipher : ECDHE-RSA-AES256-SHA384
IP                      : 10.20.30.2
Hostname                : abcd.com
Status                  : OK
StatusInfo              :
```

This cmdlet shows the output on iLO 4 and iLO 5 with the connection object passed as pipeline input.

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
Default value: Objects
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.RIBCL.EncryptionSetting[] or HPE.iLO.Response.Redfish.EncryptionSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOEncryptionSetting]()

