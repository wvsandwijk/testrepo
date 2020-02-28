---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOCriticalTemperatureAction

## SYNOPSIS
Sets the server to Power On or Power Off after shutting down due to a critical temperature condition.

## SYNTAX

```
Set-HPEiLOCriticalTemperatureAction [-Connection] <Connection[]> -RebootAfterShutdown <String[]>
 [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOCriticalTemperatureAction cmdlet controls the reaction of the server after a critical temperature shutdown.
A value of No sets the server to automatically power on after a critical temperature shutdown (the default).
A value of Yes sets the server to remain powered off after a critical temperature shutdown.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOCriticalTemperatureAction -RebootAfterShutdown Yes
```

This example sets the RebootAfterShutdown for  iLO 4 servers, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 

PS C:\> Set-HPEiLOCriticalTemperatureAction -Connection $connection -RebootAfterShutdown Yes,No,Yes
```

This cmdlet sets the RebootAfterShutdown of iLO 4 servers, in which an array of connection objects is passed as named parameter.

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

### -RebootAfterShutdown
Specifies the Critical Temperature setting.
Possible values are Yes to keep server powered off after it shuts down due to critical temperature condition or No to power on the server.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

Required: True
Position: Named
Default value: No
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
## OUTPUTS

### None
When the cmdlet does not execute correctly, output with the error message is produced.
Otherwise, this cmdlet does not generate any output.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOCriticalTemperatureAction]()

[Connect-HPEiLO]()

