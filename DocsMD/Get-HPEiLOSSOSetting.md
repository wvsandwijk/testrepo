---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOSSOSetting

## SYNOPSIS
Gets the SSO Setting for the iLO.

## SYNTAX

```
Get-HPEiLOSSOSetting [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOSSOSetting cmdlet gets SSO settings for iLO.
There are three roles - UserRole, OperatorRole and AdministratorRole.
This cmdlet gets the all privileges for these roles.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOSSOSetting

PS C:\> $obj | fl

TrustMode         : CERTIFICATE
AdministratorRole : HPE.iLO.Response.RIBCL.Privilege
OperatorRole      : HPE.iLO.Response.RIBCL.Privilege
UserRole          : HPE.iLO.Response.RIBCL.Privilege
SSOServer         : {HPE.iLO.Response.RIBCL.SSOServer}
IP                : 10.20.30.40
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

PS C:\> $obj.AdministratorRole

LoginPrivilege                : Yes
RemoteConsolePrivilege        : Yes
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : Yes
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes

PS C:\> $obj.SSOServer


Index      : 1
IssuedTo   : 
IssuedBy   : 
ValidFrom  : 
ValidUntil : 
Value      : 
             -----BEGIN CERTIFICATE-----
             12345
             -----END CERTIFICATE-----
```

This cmdlet gets the SSO setting of the iLO target for iLO 4 server.
$connection is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOSSOSetting

PS C:\> $obj | fl

TrustMode         : TrustbyCertificate
AdministratorRole : HPE.iLO.Response.Redfish.Privilege
OperatorRole      : HPE.iLO.Response.Redfish.Privilege
UserRole          : HPE.iLO.Response.Redfish.Privilege
SSOServer         : {VM-Win12-02.powershvpn.com, w11ebsew11rv1er141.powershvpn12.com, 
                    w11ebsew11rv1er141.powershvpn21.com}
IP                : 10.20.30.40
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

PS C:\> $obj.AdministratorRole

HostBIOSConfigPrivilege       : Yes
HostNICConfigPrivilege        : No
HostStorageConfigPrivilege    : No
LoginPrivilege                : Yes
RemoteConsolePrivilege        : Yes
SystemRecoveryConfigPrivilege : Yes
UserConfigPrivilege           : Yes
VirtualMediaPrivilege         : Yes
VirtualPowerAndResetPrivilege : Yes
iLOConfigPrivilege            : Yes

PS C:\> $obj.SSOServer

RecordType  : Certificate
ServerName  : VM-Win12-02.powershvpn.com
Status      : OK
Index       : 1
IssuedTo    : VM-Win12-02.powershvpn.com
IssuedBy    : RootCApowershvpn-POWERSHELLVPN-CA
ValidFrom   : 12/16/2016 7:19:16 AM
ValidUntil  : 12/16/2017 7:19:16 AM
Certificate : -----BEGIN CERTIFICATE-----
              MIIFkTCCBHmgAwIBAgITWwAAAA0VJD4n0CgiCgABAAAADTANBgkqhkiG9w0BAQsF
              ADBdMRMwEQYKCZImiZPyLGQBGRYDY29tMRowGAYKCZImiZPyLGQBGRYKcG93ZXJz
              aHZwbjEqMCgGA1UEAxMhUm9vdENBcG93ZXJzaHZwbi1QT1dFUlNIRUxMVlBOLUNB
              MB4XDTE2MTIxNjA3MTkxNloXDTE3MTIxNjA3MTkxNlowJTEjMCEGA1UEAxMaVk0t
              V2luMTItMDIucG93ZXJzaHZwbi5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
              -----END CERTIFICATE-----
              
RecordType  : DNSName
ServerName  : w11ebsabcd1rv1er141.powershvpn12.com
Status      : Degraded
Index       : 2
IssuedTo    : 
IssuedBy    : 
ValidFrom   : 1/1/0001 12:00:00 AM
ValidUntil  : 1/1/0001 12:00:00 AM
Certificate : 

RecordType  : DNSName
ServerName  : wdefs41.powershvpn21.com
Status      : Degraded
Index       : 3
IssuedTo    : 
IssuedBy    : 
ValidFrom   : 1/1/0001 12:00:00 AM
ValidUntil  : 1/1/0001 12:00:00 AM
Certificate :
```

This cmdlet gets the SSO setting of the iLO target for iLO 5 connection object.
$connection is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOSSOSetting -Connection $connection

TrustMode         : CERTIFICATE
AdministratorRole : HPE.iLO.Response.RIBCL.Privilege
OperatorRole      : HPE.iLO.Response.RIBCL.Privilege
UserRole          : HPE.iLO.Response.RIBCL.Privilege
IP                : 10.20.30.40
Hostname          : abcd.com
Status            : OK
StatusInfo        : 

TrustMode         : TrustbyCertificate
AdministratorRole : HPE.iLO.Response.Redfish.Privilege
OperatorRole      : HPE.iLO.Response.Redfish.Privilege
UserRole          : HPE.iLO.Response.Redfish.Privilege
SSOServer         : {SSOServer}
IP                : 10.20.30.41
Hostname          : abcd.com
Status            : OK
StatusInfo        :
```

This cmdlet shows the output with an array of iLO connection objects passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.SSOSetting[] or HPE.iLO.Response.Redfish.SSOSetting[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOSSOSetting]()

[Add-HPEiLOSSORecord]()

[Remove-HPEiLOSSORecord]()

