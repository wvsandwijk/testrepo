---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOPostSetting

## SYNOPSIS
Sets the Post setting detail.

## SYNTAX

```
Set-HPEiLOPostSetting [-Connection] <Connection[]> [-PostMode <String[]>] [-PostDiscoveryMode <String[]>]
 [-EndOfPostDelaySeconds <UInt32[]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOPostSetting sets the Post setting detail.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOPostSetting -PostMode Normal -PostDiscoveryMode Auto -EndOfPostDelaySeconds 5
```

This cmdlet sets the value of Post setting on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOPostSetting -Connection $connection -PostMode Normal -PostDiscoveryMode Auto -EndOfPostDelaySeconds 5
```

This cmdlet sets the value of PostSetting iLO 5 with the connection object passed as named parameter.

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

### -PostMode
The manner in which the system will operate during and at completion of POST.
Supported values are:
• Normal: Normal operations
• PostToReboot: Server boots until Discovery Completes, then reboots.
• PostToShutdown: Server boots until Discovery Completes, then shuts down.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Normal, PostToShutdown, PostToReboot

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PostDiscoveryMode
The manner in which the system will operate during the discovery section of POST.
Supported values are:
• Auto: BIOS will automatically use ForceFastBoot if the system hardware has not changed from last time of FullDiscovery or ForceFullDiscovery if the system hardware has changed.
• ForceFastBoot: Server uses the existing cached discovery data.
• ForceFullDiscovery: Server makes a full discovery of all devices.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Auto, ForceFullDiscovery, ForceFastBoot

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EndOfPostDelaySeconds
Supported on UEFI based systems only.
The number of seconds to delay before finalizing POST with the Mode action (for example, delay before shutdown).

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
System.UInt32[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOPostSetting]()

