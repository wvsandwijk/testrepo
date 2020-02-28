---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOESKMSetting

## SYNOPSIS
Gets the Enterprise Secure Key Manager (ESKM) setting information.

## SYNTAX

```
Get-HPEiLOESKMSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOESKMSetting cmdlet displays the Enterprise Secure Key Manager (ESKM) settings configured in iLO for the specified server.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOESKMSetting 

PS C:\> $out

AccountGroup               : posidongroup
AccountName                : ilo-fc15b4972d88
EnableRedundancy           : No
ESKMLocalCACertificateName : Local CA
ImportedCertificateIssuer  : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
ImportedCertificateSubject : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
PrimaryKeyServerAddress    : 15.114.233.81
PrimaryKeyServerPort       : 9444
SecondaryKeyServerAddress  : 15.114.233.82
SecondaryKeyServerPort     : 9444
IP                         : 10.20.30.2
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOESKMSetting 

PS C:\> $out

AccountGroup               : posidongroup
AccountName                : ilo-fc15b4972d88
EnableRedundancy           : No
ESKMLocalCACertificateName : Local CA
ImportedCertificateIssuer  : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
ImportedCertificateSubject : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
PrimaryKeyServerAddress    : 15.114.233.81
PrimaryKeyServerPort       : 9444
SecondaryKeyServerAddress  : 15.114.233.82
SecondaryKeyServerPort     : 9444
ESKMEventLog               : {HPE.iLO.Response.Redfish.ESKMEventLog, HPE.iLO.Response.Redfish.ESKMEventLog, 
                             HPE.iLO.Response.Redfish.ESKMEventLog, HPE.iLO.Response.Redfish.ESKMEventLog...}
IP                         : 10.20.30.2
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 : 

PS C:\> $out.ESKMEventLog | fl

Event     : iLO account ilo-fc15b4972d88 verified
Timestamp : 2017-05-27T14:49:58Z

Event     : Account ilo-fc15b4972d88 is already a member of posidongroup.
Timestamp : 2017-05-27T14:49:59Z

Event     : Requested group name does not match existing group name. Will use existing group name posidongroup.
Timestamp : 2017-05-27T14:49:59Z

Event     : ESKM server at 15.114.233.81:9444 is accessible
Timestamp : 2017-05-27T14:50:14Z

Event     : ESKM server at 15.114.233.82:9444 is accessible
Timestamp : 2017-05-27T14:50:16Z

Event     : ESKM server at 15.114.233.81:9444 is accessible
Timestamp : 2017-05-27T14:50:50Z
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOESKMSetting -Connection $connection

AccountGroup               : posidongroup
AccountName                : ilo-fc15b4972d88
EnableRedundancy           : No
ESKMLocalCACertificateName : Local CA
ImportedCertificateIssuer  : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
ImportedCertificateSubject : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
PrimaryKeyServerAddress    : 15.114.233.81
PrimaryKeyServerPort       : 9444
SecondaryKeyServerAddress  : 15.114.233.82
SecondaryKeyServerPort     : 9444
IP                         : 10.20.30.40
Hostname                   : abcd.com
Status                     : OK
StatusInfo                 : 

AccountGroup               : posidongroup
AccountName                : ilo-fc15b4972d88
EnableRedundancy           : No
ESKMLocalCACertificateName : Local CA
ImportedCertificateIssuer  : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
ImportedCertificateSubject : /C=US/ST=TX/L=Houston/O=HP/OU=ISS/CN=Local CA/emailAddress=support@hpe.com
PrimaryKeyServerAddress    : 15.114.233.81
PrimaryKeyServerPort       : 9444
SecondaryKeyServerAddress  : 15.114.233.82
SecondaryKeyServerPort     : 9444
ESKMEventLog               : {HPE.iLO.Response.Redfish.ESKMEventLog, HPE.iLO.Response.Redfish.ESKMEventLog, 
                             HPE.iLO.Response.Redfish.ESKMEventLog, HPE.iLO.Response.Redfish.ESKMEventLog...}
IP                         : 10.20.30.41
Hostname                   : xyz.example.com
Status                     : OK
StatusInfo                 :
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

### HPE.iLO.Response.RIBCL.ESKMSetting[] or HPE.iLO.Response.Redfish.ESKMSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOESKMSetting]()

[Test-HPEiLOESKMConnection]()

[Clear-HPEiLOESKMLog]()

