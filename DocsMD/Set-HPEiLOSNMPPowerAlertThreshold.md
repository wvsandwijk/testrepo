---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOSNMPPowerAlertThreshold

## SYNOPSIS
Sets the power alert threshold value for the iLO.

## SYNTAX

```
Set-HPEiLOSNMPPowerAlertThreshold [-Connection] <Connection[]> -PowerAlertType <String[]>
 [-PowerAlertThreshold <String[]>] [-PowerAlertDuration <String[]>] [-Force] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Set-HPEiLOPowerAlertThreshold cmdlet sets the power alert threshold for iLO devices.
It also sets the type of alert and duration of sample time.
You must purchase the iLO Advanced license to enable this feature.
For iLO 4 servers, all the three parameters are mandatory.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOSNMPPowerAlertThreshold -PowerAlertType Average -PowerAlertThreshold 300 -PowerAlertDuration 10
```

This cmdlet sets the power alert threshold type, value and duration on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOSNMPPowerAlertThreshold -Connection $connection -PowerAlertType Average -PowerAlertThreshold 300 -PowerAlertDuration 10
```

This cmdlet sets the power alert threshold type, value and duration on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -PowerAlertType
Specifies the type of power alert.
Valid values are:
•  Disabled - No power alerts are set.
If you select Disabled, the values for Threshold and Duration do not matter.
•  Peak - Represents the half-second average power reading during the sample.
•  Average - Represents the mean power reading during the sample.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Average, Disabled, Peak

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PowerAlertThreshold
Sets the alert threshold, in Watts.

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

### -PowerAlertDuration
Sets the length of the sample time, in minutes, starting at 5.
Duration will always be in 5 minute intervals up to 240 minutes maximum.
Any positive integer can be used, but it will be rounded off to the nearest 5.

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

### -Force
@{Text=}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

[Get-HPEiLOSNMPPowerAlertThreshold]()

