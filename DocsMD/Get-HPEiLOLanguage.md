---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOLanguage

## SYNOPSIS
Gets all languages on the iLO.

## SYNTAX

```
Get-HPEiLOLanguage [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOLanguage cmdlet gets the list of languages on the iLO and the default language of the iLO.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOLanguage

PS C:\> $obj | fl


DefaultLanguage : en
Languages       : {HPE.iLO.Response.RIBCL.Language}
IP              : 10.20.30.1
Hostname        : bl465cgen8-01.powershvpn.com
Status          : OK
StatusInfo      : 




PS C:\> $obj.Languages | fl


LanguageID      : en
TranslationName : English
```

This example shows the usage of cmdlet on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOLanguage

PS C:\> $obj | fl


DefaultLanguage : en
Languages       : {HPE.iLO.Response.RIBCL.Language}
IP              : 10.20.30.1
Hostname        : bl465cgen8-01.powershvpn.com
Status          : OK
StatusInfo      : 




PS C:\> $obj.Languages | fl


LanguageID      : ja
TranslationName : 日本語
```

This example shows the usage of cmdlet on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection= Connect-HPEiLO 10.20.30.1,10.20.30.2 admin admin123 -Disablecertificateauthentication

PS C:\> Get-HPEiLOLanguage  -Connection $connection | fl


DefaultLanguage : en
Languages       : {HPE.iLO.Response.RIBCL.Language}
IP              : 10.20.30.1
Hostname        : xyz.example.com
Status          : OK
StatusInfo      : 

DefaultLanguage : en
Languages       : {HPE.iLO.Response.Redfish.Language}
IP              : 10.20.30.2
Hostname        : xyz.example.com
Status          : OK
StatusInfo      :
```

This example shows the usage of cmdlet on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Connection[]System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.LanguageInfo[] or HPE.iLO.Response.Redfish.LanguageInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOLanguage]()

