---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOLicense

## SYNOPSIS
Applies a license key for the Integrated Lights-Out Advanced Pack.

## SYNTAX

```
Set-HPEiLOLicense [-Connection] <Connection[]> -Key <String[]> [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOLicense cmdlet activates or deactivates iLO features based on the license type.
There are three types of licenses
1.
Advanced
2.
Essentials
3.
Scale-out.

Details of the licenses are available at https://www.hpe.com/us/en/servers/integrated-lights-out-ilo.html.
The iLO license pack is licensed to a single server.
You may not use the same individual license key on more than one server.
Contact your Account Representative for information on Volume Licensing or Master License Agreements if you want to use the same key for multiple servers.
You must have the Configure iLO Settings privilege to execute this cmdlet.

NOTE: You do not have to use a licensing key on a ProLiant BL Class server.
Advanced features are automatically activated.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Set-HPEiLOLicense -Key 12345-67890-12345-67890-12345
```

This cmdlet shows the output on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Set-HPEiLOLicense -Connection $connection -Key 12345-67890-12345-67890-12345
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### -Key
Signals the activation of the iLO advanced/essential/scale-out licensing.
This parameter specifies the license key value.
The key must be entered as one continuous string.
Commas, periods, or other characters must not separate the key value.
The key only accepts 25 characters; other characters entered to separate key values are interpreted as a part of the key, and results in the wrong key being entered.

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

### System.Object
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOLicense]()

