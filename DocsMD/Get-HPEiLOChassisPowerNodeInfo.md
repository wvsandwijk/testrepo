---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisPowerNodeInfo

## SYNOPSIS
Gets Apollo chassis server Power Node information.

## SYNTAX

```
Get-HPEiLOChassisPowerNodeInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlets contains the node configuration for each node of an Apollo chassis server platform only on an iLO5 target.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $con = Connect-HPEiLO 192.168.10.34 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32> $nod = $con | Get-HPEiLOChassisPowerNodeInfo
PS C:\Windows\system32> $nod
MaxSupportedNodes : 4
NodeInfoList      : {HPE.iLO.Response.Redfish.NodeInfoList, HPE.iLO.Response.Redfish.NodeInfoList}
IP                : 192.168.10.34
Hostname          : xl170rgen10-02.powershvpn.com
Status            : OK
StatusInfo        : 

PS C:\Windows\system32> $nod.NodeInfoList
NodeNumber Throttle WarningStatus
---------- -------- -------------
         1        0         False
         2        0         False
```

Gets Apollo server node information on an iLO 5 Apollo server.

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

### HPE.iLO.Response.Redfish.ChassisPowerNodeInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

