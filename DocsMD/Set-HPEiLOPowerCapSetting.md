---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOPowerCapSetting

## SYNOPSIS
Sets the power cap feature on the host server.

## SYNTAX

```
Set-HPEiLOPowerCapSetting [-Connection] <Connection[]> [-PowerCap <UInt32[]>] [-LimitException <String[]>]
 [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Set-HPEiLOPowerCap cmdlet sets a power cap on the server.
You must have the Configure iLO Settings privilege to execute this cmdlet or to modify the power cap.
You cannot set this property if a dynamic power cap is set for the server.
Dynamic power capping is set and modified using either Onboard Administrator or Insight Power Manager.
You must purchase the iLO Advanced license to enable this feature.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOPowerCapSetting -PowerCap 50
```

This cmdlet sets the value of PowerCap on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOPowerCapSetting -PowerCap 50 -LimitException HardPowerOff
```

This cmdlet sets the value of PowerCap on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOPowerCapSetting -PowerCap 90
```

This cmdlet sets the value of PowerCap on iLO 4 and iLO 5 with the connection object passed as pipeline input.

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

### -PowerCap
Specifies the power cap on the server.
Valid power cap values are determined using a power test run on the server at boot.
The possible values are 0 to disable the power cap, or a numeric value in watts (as determined in the power test.)

```yaml
Type: UInt32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LimitException
The action that is taken if the power cannot be maintained below the PowerCap.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: NoAction, HardPowerOff, LogEventOnly, Oem

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

[Get-HPEiLOPowerCapSetting]()

