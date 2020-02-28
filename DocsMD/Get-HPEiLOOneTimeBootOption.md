---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOOneTimeBootOption

## SYNOPSIS
Gets the current state of the one-time boot.

## SYNTAX

```
Get-HPEiLOOneTimeBootOption [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOOneTimeBootOption cmdlet gets the current state of the one-time boot.
The returned data values include:
.
PXE
.
CD
· None
· Floppy
· HDD
· USB
· Diags
.
Emb-Menu
.
Emb-ACU
.
Emb-HPSUM-Auto
.
BIOSSetup
.
UEFIShell
.
UEFITarget
.
UEFIHTTP
.
IntelligentProvisioning

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOOneTimeBootOption

BootSourceOverrideTarget : CD
IP                       : 10.20.30.1
Hostname                 : abcd.com
Status                   : OK
StatusInfo               :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Get-HPEiLOOneTimeBootOption

BootSourceOverrideEnable                    : Once
BootSourceOverrideMode                      : UEFI
BootSourceOverrideTarget                    : CD
BootSourceOverrideTargetSupportedValues     : {None, CD, HDD, USB...}
UEFITargetBootSourceOverride                : None
UEFITargetBootSourceOverrideSupportedValues : {HD(1,GPT,CCCBCA79-1F28-457B-9946-4CCCF81FB3B6,0x800,0x32000)/
                                              \EFI\Microsoft\Boot\bootmgfw.efi, 
                                              UsbClass(0xFFFF,0xFFFF,0xFF,0xFF,0xFF), PciRoot(0x0)/Pci(0x1C,
                                              0x0)/Pci(0x0,0x0)/MAC(FC15B4972EAA,0x0)/IPv4(0.0.0.0)/Uri(), P
                                              ciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(FC15B4972EAA,0x0)/I
                                              Pv4(0.0.0.0)...}
IP                       : 10.20.30.1
Hostname                 : abcd.com
Status                   : OK
StatusInfo               :
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLOOneTimeBootOption -Connection $connection

BootSourceOverrideTarget : CD
IP                       : 10.20.30.1
Hostname                 : abcd.com
Status                   : OK
StatusInfo               : 

BootSourceOverrideEnable                    : Once
BootSourceOverrideMode                      : UEFI
BootSourceOverrideTarget                    : CD
BootSourceOverrideTargetSupportedValues     : {None, CD, HDD, USB...}
UEFITargetBootSourceOverride                : None
UEFITargetBootSourceOverrideSupportedValues : {HD(1,GPT,CCCBCA79-1F28-457B-9946-4CCCF81FB3B6,0x800,0x32000)/
                                              \EFI\Microsoft\Boot\bootmgfw.efi, 
                                              UsbClass(0xFFFF,0xFFFF,0xFF,0xFF,0xFF), PciRoot(0x0)/Pci(0x1C,
                                              0x0)/Pci(0x0,0x0)/MAC(FC15B4972EAA,0x0)/IPv4(0.0.0.0)/Uri(), P
                                              ciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(FC15B4972EAA,0x0)/I
                                              Pv4(0.0.0.0)...}
IP                       : 10.20.30.2
Hostname                 : xyz.example.com
Status                   : OK
StatusInfo               :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.OneTimeBootOption[] or HPE.iLO.Response.Redfish.OneTimeBootOption[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Set-HPEiLOOneTimeBootOption]()

