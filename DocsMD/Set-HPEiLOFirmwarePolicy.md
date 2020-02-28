---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOFirmwarePolicy

## SYNOPSIS
Modifies the firmware downgrade policy settings.

## SYNTAX

```
Set-HPEiLOFirmwarePolicy [-Connection] <Connection[]> [-OutputType <String>] -DowngradePolicy <String[]>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOFirmwarepolicy cmdlet modifies the firmware downgrade policy settings.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Set-HPEiLOFirmwarePolicy -DowngradePollicy AllowDowngrade
```

This command shows the output on iLO 5 and connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> Set-HPEiLOFirmwarePolicy  -Connection $connection -DowngradePollicy AllowDowngrade
```

This cmdlet shows the output on iLO 5 when array of connection object is passed as named parameter.

## PARAMETERS

### -Connection
Connection object to iLO.
This is a session object that identifies the target to which the connection is established.
The Connection object is created by the Connect-HPEiLO command using the IP/Hostname and username and password provided to log in to the iLO.

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DowngradePolicy
Restricts the firmware downgrade.
The supported values are AllowDowngrade, RecoveryDowngrade, NoDowngrade.
1.
AllowDowngrade- Downgrading firmware is allowed.
2.
RecoveryDowngrade- Downgrading firmware is allowed by a user with the Recovery Set privilege.
3.
NoDowngrade- Downgrading firmware is not allowed.
This is a permanent setting and cannot be undone.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: AllowDowngrade, RecoveryDowngrade, NoDowngrade

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOFirmwarePolicy]()

