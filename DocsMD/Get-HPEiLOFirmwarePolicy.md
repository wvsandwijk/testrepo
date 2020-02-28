---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFirmwarePolicy

## SYNOPSIS
Gets the firmware downgrade policy information.

## SYNTAX

```
Get-HPEiLOFirmwarePolicy [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOFirmwarePolicy gets the firmware downgrade policy information.
This cmdlet is supported on iLO 5 servers only.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\>$output =  ,$connection | Get-HPEiLOFirmwarePolicy

PS C:\>$output 

DowngradePolicy : AllowDowngrade
IP              : 10.20.30.40
Hostname        : abcd.com
Status          : OK
StatusInfo      :
```

This cmdlet shows the output on iLO 5 with connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.50 -Username admin -Password admin123 

PS C:\>$output =  Get-HPEiLOFirmwarePolicy -Connection $connection

PS C:\>$output 

DowngradePolicy : AllowDowngrade
IP              : 10.20.30.40
Hostname        : abcd.com
Status          : OK
StatusInfo      : 

DowngradePolicy : NoDowngrade
IP              : 10.20.30.50
Hostname        : ab.com
Status          : OK
StatusInfo      :
```

This cmdlet shows the output on iLO 5 with an array of iLO connection objects passed as named parameter.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### HPE.iLO.Response.Redfish.FirmwarePolicy[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOFirmwarePolicy]()

