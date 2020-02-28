---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOServerSoftwareInventory

## SYNOPSIS
Gets the server HPE software inventory detail.

## SYNTAX

```
Get-HPEiLOServerSoftwareInventory [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOServerSoftwareInventory cmdlet gets the server HPE software inventory detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLOServerSoftwareInventory

PS C:\> $out

ServerSoftwareInfo : {HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo}
IP                 : 10.20.30.1
Hostname           : abcd.com
Status             : OK
StatusInfo         : 

PS C:\> $out.ServerSoftwareInfo

Index          : 1
Description    : agentless management service
Name           : ams.exe
Version        : 1.1.0.0
DeviceContext  : 
DeviceClass    : e7a8b7dd-a6c0-4056-b14a-97bc423ddc7b
DeviceInstance : 
Targets        : {20a6e8e4-bf33-4c71-a6bf-d9ec8b303467}

Index          : 2
Description    : qlogic gigabit ethernet vbd
Name           : BXVBDA.SYS
Version        : 7.12.31.105
DeviceContext  : 
DeviceClass    : e7a8b7dd-a6c0-4056-b14a-97bc423ddc7b
DeviceInstance : 
Targets        : {20a6e8e4-bf33-4c71-a6bf-d9ecd765f4f8}

Index          : 3
Description    : qlogic 10 gige vbd
Name           : evbda.sys
Version        : 7.13.65.105
DeviceContext  : 
DeviceClass    : e7a8b7dd-a6c0-4056-b14a-97bc423ddc7b
DeviceInstance : 
Targets        : {20a6e8e4-bf33-4c71-a6bf-d9ec9bc6b74c}

Index          : 4
Description    : smartraid, smarthba pqi storport driver
Name           : smartpqi.sys
Version        : 63.32.0.64
DeviceContext  : 
DeviceClass    : e7a8b7dd-a6c0-4056-b14a-97bc423ddc7b
DeviceInstance : 
Targets        : {20a6e8e4-bf33-4c71-a6bf-d9ec040331c1}
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = Get-HPEiLOServerSoftwareInventory -Connection $connection

PS C:\> $out

ServerSoftwareInfo : {HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo}
IP                 : 10.20.30.1
Hostname           : abcd.com
Status             : OK
StatusInfo         : 

ServerSoftwareInfo : {HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo, 
                     HPE.iLO.Response.Redfish.ServerSoftwareInfo}
IP                 : 10.20.30.2
Hostname           : xyz.example.com
Status             : OK
StatusInfo         :
```

This cmdlet shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.ServerSoftwareInventory[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

