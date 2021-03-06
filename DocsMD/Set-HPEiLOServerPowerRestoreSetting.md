---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOServerPowerRestoreSetting

## SYNOPSIS
Sets the automatic power-on and power-on-delay settings.

## SYNTAX

```
Set-HPEiLOServerPowerRestoreSetting [-Connection] <Connection[]> -AutoPower <String[]>
 [-PowerOnDelay <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOServerPowerRestoreSetting cmdlet sets the automatic power-on and power-on-delay settings.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOServerPowerRestoreSetting -AutoPower On -PowerOnDelay 30Sec
```

This cmdlet sets the PowerRestoreSetting and PowerAutoOn on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOServerPowerRestoreSetting -Connection $connection -AutoPower On -PowerOnDelay 30Sec
```

This cmdlet sets the PowerRestoreSetting and PowerAutoOn on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### -AutoPower
Sets the AutoPower value.
The supported values are :
• Yes - Enable automatic power on with a minimum delay (Not supported on iLO 5)
• No - APO Restore Last Power State (Not supported on iLO 5)
• On - APO Always Power On
• Off - APO Always Remain Off
• Restore - APO Restore Last Power State

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: On, Off, Restore, Yes, No

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PowerOnDelay
Sets the power on Delay value.
The supported values are:
• Minimum (Not supported on iLO 4)
• 15Sec
• 30Sec
• 45Sec
• 60Sec
• RandomUpTo120Sec

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Minimum, 15Sec, 30Sec, 45Sec, 60Sec, RandomUpTo120Sec

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
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOServerPowerRestoreSetting]()

[Connect-HPEiLO]()

