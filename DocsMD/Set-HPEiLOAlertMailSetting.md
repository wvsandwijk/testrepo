---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOAlertMailSetting

## SYNOPSIS
Modifies alertmail settings of the host server.

## SYNTAX

```
Set-HPEiLOAlertMailSetting [-Connection] <Connection[]> -AlertMailEmail <String[]> -AlertMailEnabled <String[]>
 -AlertMailSenderDomain <String[]> [-AlertMailSMTPPort <UInt32[]>] -AlertMailSMTPServer <String[]>
 [-AlertMailSMTPAuthEnabled <String[]>] [-AlertMailSMTPAuthUser <String[]>] [-AlertMailSMTPAuthPw <String[]>]
 [-AlertMailSMTPSecureEnabled <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOAlertMailSetting cmdlet modifies alertmail settings of the iLO.
You must have the Configure iLO Settings privilege to execute this cmdlet.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOAlertMailSetting -AlertMailEmail yv@abcd.com -AlertMailEnabled Yes -AlertMailSenderDomain 10.10.10.10 -AlertMailSMTPPort 25 -AlertMailSMTPServer 15.15.15.15
```

This example sets the value of AlertMail settings on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Set-HPEiLOAlertMailSetting -Connection $connection -AlertMailEmail yv@abcd.com -AlertMailEnabled Yes -AlertMailSenderDomain 10.10.10.10 -AlertMailSMTPPort 25 -AlertMailSMTPServer 15.15.15.15 -AlertMailSMTPAuthEnabled Yes -AlertMailSMTPSecureEnabled Yes -AlertMailSMTPAuthUser "admin" -AlertMailSMTPAuthPw "admin123"
```

This example sets the value of AlertMail settings on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -AlertMailEmail
Sets the destination email address for iLO email alerts.
Value must be a single email address no longer than 63 characters and must be in standard email address format.

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

### -AlertMailEnabled
Determines whether iLO should send alert conditions detected independently of the host operating system via email.
The supported values are Yes and No.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AlertMailSenderDomain
Sets the domain name to be used in the sender (From) email address.
The value is formed by using the iLO name as the hostname and the subject string as the domain name.
The parameter value cannot be null or empty.

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

### -AlertMailSMTPPort
Sets the port that the SMTP server uses for unauthenticated SMTP connections.
The default value is 25.

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 25
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AlertMailSMTPServer
Sets the IP address or DNS name of the SMTP server or the MSA.
This server cooperates with the MTA to deliver Email.
The maximum string length is 63 characters.
Note that the SMTP server is specified by support unauthenticated SMTP connections on port 25.

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

### -AlertMailSMTPAuthEnabled
This parameter indicates whether AlertMail SMTP Authentication is enabled.
It can be enabled only when the properties AlertMailSMTPSecureEnabled, AlertMailSMTPAuthUser, and AlertMailSMTPAuthPw are set or not empty.
It takes Yes or No values.
Works only on iLO 5.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AlertMailSMTPAuthUser
It is the username credential for SMTP server authentication.
Works only on iLO 5.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AlertMailSMTPAuthPw
It is the password credential for SMTP server authentication.
Works only on iLO 5.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AlertMailSMTPSecureEnabled
This parameter Indicates whether AlertMail SMTP Secure Connection (SSL/TLS) is enabled.
It takes Yes or No values.
Works only on iLO 5.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: False
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
System.Int32[]
System.String
## OUTPUTS

### System.Object
If the example executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOAlertMailSetting]()

