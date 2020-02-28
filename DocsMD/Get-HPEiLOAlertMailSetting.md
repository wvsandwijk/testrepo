---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOAlertMailSetting

## SYNOPSIS
Gets the AlertMail setting of the server.

## SYNTAX

```
Get-HPEiLOAlertMailSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOAlertMailSetting cmdlet gets the value of the AlertMail setting of the server.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Get-HPEiLOAlertMailSetting 

AlertMailEmail             : yv@hpe.com
AlertMailEnabled           : Yes
AlertMailSMTPAuthEnabled   : No
AlertMailSMTPSecureEnabled : Yes
AlertMailSenderDomain      : 1.1.1.1
AlertMailSMTPPort          : 100
AlertMailSMTPServer        : 10.10.10.10
AlertMailSMTPAuthUser      : 
AlertMailSMTPAuthPw        : 
IP                         : 192.168.10.34
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 :
```

This cmdlet shows the output on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\>  $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Get-HPEiLOAlertMailSetting -Connection $connection 

AlertMailEmail             : am1@hpe.com
AlertMailEnabled           : Yes
AlertMailSMTPAuthEnabled   : No
AlertMailSMTPSecureEnabled : Yes
AlertMailSenderDomain      : 1.1.1.1
AlertMailSMTPPort          : 100
AlertMailSMTPServer        : 10.10.10.10
AlertMailSMTPAuthUser      : 
AlertMailSMTPAuthPw        : 
IP                         : 10.20.30.1
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 : 

AlertMailEmail             : am2@hpe.com
AlertMailEnabled           : Yes
AlertMailSMTPAuthEnabled   : No
AlertMailSMTPSecureEnabled : Yes
AlertMailSenderDomain      : 1.1.1.1
AlertMailSMTPPort          : 100
AlertMailSMTPServer        : 10.10.10.10
AlertMailSMTPAuthUser      : 
AlertMailSMTPAuthPw        : 
IP                         : 10.20.30.2
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 : 

AlertMailEmail             : am3@hpe.com
AlertMailEnabled           : Yes
AlertMailSMTPAuthEnabled   : No
AlertMailSMTPSecureEnabled : Yes
AlertMailSenderDomain      : 1.1.1.1
AlertMailSMTPPort          : 100
AlertMailSMTPServer        : 10.10.10.10
AlertMailSMTPAuthUser      : 
AlertMailSMTPAuthPw        : 
IP                         : 10.20.30.3
Hostname                   : xl170rgen10-02.powershvpn.com
Status                     : OK
StatusInfo                 :
```

This example shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.iLO4.AlertMailSettingInfo[] or HPE.iLO.Response.Redfish.AlertMailSettingInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOAlertMailSetting]()

