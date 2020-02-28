---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOAHSStatus

## SYNOPSIS
Enables or disables AHS logging.

## SYNTAX

```
Set-HPEiLOAHSStatus [-Connection] <Connection[]> -AHSEnabled <String[]> [-OutputType <String>] [-Force]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOAHSStatus cmdlet enables or disables AHS logging.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> $out = ,$connection | Set-HPEiLOAHSStatus -AHSEnabled No
```

This cmdlet sets the value of AHSEnabled on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123

PS C:\> Set-HPEiLOAHSStatus -Connection $connection -AHSEnabled Yes
```

This cmdlet sets the value of AHSEnabled iLO 4 and iLO 5 servers with an array of connection objects passed as named parameter.

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

### -AHSEnabled
Specifies if AHS logging is enabled or disabled.
The possible values are Yes to enable AHS logging and No to disable AHS logging.

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
If the cmdlet executes successfully, it does returns an object with warning or information.
In case of an error, Status and StatusInfo will be returned as PSObject.

## NOTES
• In case of iLO 4 servers, This cmdlet resets the iLO when changing the status.
However, if the command results in no status change (for example, if setting the status to Yes when the status is already enabled), the iLO will not reset.
• In case of iLO 5 servers, after successful execution of the command, the user is expected to do a reset to apply the setting.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOAHSStatus]()

