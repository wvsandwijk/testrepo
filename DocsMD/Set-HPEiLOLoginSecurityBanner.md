---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOLoginSecurityBanner

## SYNOPSIS
Sets the security message for the iLO login screen.

## SYNTAX

```
Set-HPEiLOLoginSecurityBanner [-Connection] <Connection[]> [-SecurityMessageEnabled <String[]>]
 [-SecurityMessageText <String[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Set-HPEiLOLoginSecurityBanner cmdlet gets the security message to be displayed on the iLO login screen.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> ,$connection | Set-HPEiLOLoginSecurityBanner -SecurityMessageEnabled Yes -SecurityMessageText TestSecurityMessage
```

This cmdlet enables the display of security text mesage on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> Set-HPEiLOLoginSecurityBanner -Connection $connection -SecurityMessageEnabled Yes -SecurityMessageText TestSecurityMessage
```

This cmdlet enables the display of security text mesage on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
C:\> ,$connection | Set-HPEiLOLoginSecurityBanner -SecurityMessageEnabled Yes -SecurityMessageText TestSecurityMessage
```

This cmdlet enables the display of security text mesage on iLO 4 and iLO 5 with the connection object passed as pipeline input.

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

### -SecurityMessageEnabled
Enables or disables the display of security message on the iLO login screen.
Accepted values are Yes and No.

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

### -SecurityMessageText
The security message to be displayed on the iLO login screen.

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

[Get-HPEiLOLoginSecurityBanner]()

