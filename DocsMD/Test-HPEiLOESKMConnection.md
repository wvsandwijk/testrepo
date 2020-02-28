---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Test-HPEiLOESKMConnection

## SYNOPSIS
Validates the ESKM connection of the iLO

## SYNTAX

```
Test-HPEiLOESKMConnection [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Test-HPEiLOESKMConnection cmdlet validates the ESKM connection of the iLO.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Test-HPEiLOESKMConnection

PS C:\> $out | fl

IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo : HPE.iLO.Response.StatusInfo

PS C:\> $out.StatusInfo | fl

Category          : General
Message           : PrimarySecondaryESKMServersAccessible
AffectedAttribute :
```

This cmdlet tests the ESKM connection of iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Test-HPEiLOESKMConnection -Connection $connection

PS C:\> $out | fl

IP         : 10.20.30.40
Hostname   : abcd.com
Status     : OK
StatusInfo : HPE.iLO.Response.StatusInfo

IP         : 10.20.30.41
Hostname   : xyz.example.com
Status     : OK
StatusInfo : HPE.iLO.Response.StatusInfo
```

This cmdlet tests the ESKM connection of iLO 5, in which an array of connection object is passed as named parameter.

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
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOESKMSetting]()

[Get-HPEiLOESKMSetting]()

