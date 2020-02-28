---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSecurityDashboardInfo

## SYNOPSIS
Gets Security dashboard information.

## SYNTAX

```
Get-HPEiLOSecurityDashboardInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets security dashboard information of an iLO server and works only on iLO5.

The Security Dashboard displays the status of important security features, the Overall Security Status for the system, and the current configuration for the Security State and Server Configuration Lock features.
Use the dashboard to evaluate your configuration for potential risks.
When a risk is detected, you can view details and advice for how to improve system security.

Prerequisites
Configure iLO Settings privilege for configuring the Ignore option.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $con = Connect-HPEiLO 192.168.10.31 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $sdata = $con | Get-HPEiLOSecurityDashboardInfo

PS C:\> $sdata

OverallSecurityStatus : Ignored
SecurityParameters    : {Security Override Switch, IPMI/DCMI Over LAN, Minimum Password Length, Require Login for iLO RBSU...}
IP                    : 192.168.10.31
Hostname              : bl460cgen10-03.powershvpn.com
Status                : OK
StatusInfo            : 

PS C:\> $sdata.SecurityParameters | ft

Id Description Ignore IgnoredBy IgnoredTime          Name                           SecurityStatus State    RecommendedAction
-- ----------- ------ --------- -----------          ----                           -------------- -----    -----------------
0                True admin     1/26/2019 4:40:52 PM Security Override Switch       Risk           On                        
1                True [NONE]    1/21/2019 8:38:03 PM IPMI/DCMI Over LAN             Ok             Disabled                  
2                True [NONE]    1/21/2019 8:38:03 PM Minimum Password Length        Ok             Ok                        
3                True [NONE]    1/21/2019 8:38:04 PM Require Login for iLO RBSU     Ok             Enabled                   
4                True [NONE]    1/21/2019 8:38:04 PM Authentication Failure Logging Risk           Disabled                  
5                True [NONE]    1/21/2019 7:51:49 PM Secure Boot                    Risk           Disabled                  
6                True [NONE]    1/21/2019 8:37:58 PM Password Complexity            Risk           Disabled                  
7                True admin     1/21/2019 8:27:43 PM Last Firmware Scan Result      Ok             Ok                        
8                True [NONE]    1/21/2019 8:38:05 PM Require Host Authentication    Ok             Disabled
```

Gets security dashboard information for iLO5 server.

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

### HPE.iLO.Response.Redfish.SecurityDashboardInfo[]
## NOTES

## RELATED LINKS

[Connect-HPEiLO]()

[Disconnect-HPEiLO]()

[http://www.hpe.com/servers/powershell]()

[Enable-HPEiLOSecurityDashboardSetting]()

[Disable-HPEiLOSecurityDashboardSetting]()

