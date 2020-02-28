---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOLicense

## SYNOPSIS
Gets the license information.

## SYNTAX

```
Get-HPEiLOLicense [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOLicense cmdlet gets the license information.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOLicense

License            : iLO Advanced
Key                : 323JN-YRWP2-TJQWY-6VM9Q-N7V3R
LicenseInstallDate : Sun Aug 19 19:15:09 2018
LicenseClass       : FQL
IP                 : 192.168.10.5
Hostname           : ml350gen9-01.powershvpn.com
Status             : OK
StatusInfo         :
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $output = ,$connection | Get-HPEiLOLicense

PS C:\> $output

ConfirmationRequest : HPE.iLO.Response.Redfish.ConfirmationRequest
Confirmation        : HPE.iLO.Response.Redfish.Confirmation
License             : iLO Advanced
LicenseExpire       : 
LicenseError        : 
LicenseClass        : FQL
LicenseFeatures     : HPE.iLO.Response.Redfish.LicenseFeatures
LicenseInstallDate  : 8 Aug 2017
Key                 : 32Q6Y-PQWTX-H7XYL-3996Z-RR53R
LicenseType         : Perpetual
LicenseTier         : ADV
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          : 

PS C:\> $output.ConfirmationRequest | fl

EON    : HPE.iLO.Response.Redfish.EON
Signer : iLO 5
System : HPE.iLO.Response.Redfish.System

PS C:\Windows\system32> $output.ConfirmationRequest.EON | fl

License    : iLO Advanced Premium Security Edition
Key        : 32PWK-M3X2Y-BGP5M-4STNZ-V727N
Quantity   : 1
State      : unconfirmed

PS C:\> $output.ConfirmationRequest.System | fl

ChipID       : A212ED090016CB92
Product      : ProLiant DL380 Gen10
SerialNumber : 123

PS C:\> $output.Confirmation | fl

Code    : 
Message : 
Status  : false
Service : reserved for liconf URI

PS C:\> $output.LicenseFeatures | fl

RC            : Yes
VM            : Yes
VMScript      : Yes
DirectoryAuth : Yes
DowngradePolicy : Yes
PowerReg      : Yes
SmartCard     : Yes
KD            : Yes
Scrncap       : Yes
MURC          : Yes
TextCons      : Yes
RemoteSyslog  : Yes
EmailAlert    : Yes
VSPLogging    : Yes
KeyMgr        : Yes
Federation    : Yes
FWScan        : No
SuiteB        : No
SecureErase   : No
Jitter        : Yes
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOLicense -Connection $connection 

License            : iLO Advanced
Key                : 323JN-YRWP2-TJQWY-6VM9Q-N7V3R
LicenseInstallDate : Sun Aug 19 19:15:09 2018
LicenseClass       : FQL
IP                 : 192.168.10.5
Hostname           : ml350gen9-01.powershvpn.com
Status             : OK
StatusInfo         : 

ConfirmationRequest : HPE.iLO.Response.Redfish.ConfirmationRequest
Confirmation        : HPE.iLO.Response.Redfish.Confirmation
License             : iLO Advanced
LicenseExpire       : 
LicenseError        : 
LicenseClass        : FQL
LicenseFeatures     : HPE.iLO.Response.Redfish.LicenseFeatures
LicenseInstallDate  : 8 Aug 2017
Key                 : 32Q6Y-PQWTX-H7XYL-3996Z-RR53R
LicenseType         : Perpetual
LicenseTier         : ADV
IP                  : 10.20.30.41
Hostname            : abcd.com
Status              : OK
StatusInfo          :
```

This example shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.LicenseInfo[] or HPE.iLO.Response.Redfish.LicenseInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOLicense]()

