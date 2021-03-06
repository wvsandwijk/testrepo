---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Send-HPEiLORemoteSupportTestEvent

## SYNOPSIS
Initiates a test service event submission to the Insight Remote Support server.

## SYNTAX

```
Send-HPEiLORemoteSupportTestEvent [-Connection] <Connection[]> [-MessageID <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Send-HPEiLORemoteSupportTestEvent cmdlet initiates a test service event submission to the Insight Remote Support server.
This cmdlet is used to test ERS and IRS event.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> ,$connection | Send-HPEiLORemoteSupportTestEvent -MessageID kdfpf-le23l-sdop3-ip23dh-aw2fo -Days 5
```

This cmdlet sends the test event on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Send-HPEiLORemoteSupportTestEvent -Connection $connection -MessageID kdfpf-le23l-sdop3-ip23dh-aw2fo
```

This cmdlet sends the test event on iLO 4 and iLO 5 servers with an array of connection objects passed as named parameter.

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

### -MessageID
A unique message identifier in UUID format used to match the test Service Event with this request.
It is returned in the submission package SOAP envelope header.

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
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

