---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOFirmwareInventory

## SYNOPSIS
Gets the firmware details for the iLO.

## SYNTAX

```
Get-HPEiLOFirmwareInventory [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOFirmwareInventory cmdlet gets the name and version details for the various firmware on the server.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 admin admin123

PS C:\> $obj = Get-HPEiLOFirmwareInventory -Connection $connection 

PS C:\> $obj | fl

FirmwareInformation : {HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation...}
IP                  : 10.20.30.2
Hostname            : xyz.example.com
Status              : OK
StatusInfo          : 

$obj.FirmwareInformation

Index           : 1
FirmwareName    : iLO
FirmwareVersion : 2.55 Jun 16 2017
FirmwareFamily  : 

Index           : 2
FirmwareName    : System ROM
FirmwareVersion : I36 v2.40 (02/17/2017)
FirmwareFamily  : 

Index           : 3
FirmwareName    : Redundant System ROM
FirmwareVersion : I36 v2.40 (02/17/2017)
FirmwareFamily  : 

Index           : 4
FirmwareName    : Intelligent Provisioning
FirmwareVersion : 2.30.75
FirmwareFamily  : 

Index           : 5
FirmwareName    : Intelligent Platform Abstraction Data
FirmwareVersion : 22.27
FirmwareFamily  : 

Index           : 6
FirmwareName    : Power Management Controller Firmware
FirmwareVersion : 1.0.7
FirmwareFamily  : 14h

Index           : 7
FirmwareName    : Power Management Controller FW Bootloader
FirmwareVersion : 1.0
FirmwareFamily  : 

Index           : 8
FirmwareName    : System Programmable Logic Device
FirmwareVersion : Version 0x16
FirmwareFamily  : 

Index           : 9
FirmwareName    : SAS Programmable Logic Device
FirmwareVersion : Version 0x01
FirmwareFamily  : 

Index           : 10
FirmwareName    : Server Platform Services (SPS) Firmware
FirmwareVersion : 3.0.6.267.4
FirmwareFamily  : 

Index           : 11
FirmwareName    : HPE Smart Storage Battery 1 Firmware
FirmwareVersion : 1.3
FirmwareFamily  : 

Index           : 12
FirmwareName    : Smart Array P244br Controller
FirmwareVersion : V3.00_B0
FirmwareFamily  :
```

This example shows the usage of cmdlet on iLO 4 with the connection object passed as named parameter.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.3 admin admin123

PS C:\> $obj = ,$connection | Get-HPEiLOFirmwareInventory

PS C:\> $obj | fl

FirmwareInformation : {HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation...}
IP                  : 10.20.30.3
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :

$obj.FirmwareInformation

Index           : 1
FirmwareName    : iLO 5
FirmwareVersion : 1.20 Aug 07 2017
DeviceClass     : 2f317b9d-c9e3-4d76-bff6-b9d0d085a952
DeviceInstance  : 
Location        : System Board
Targets         : {4764a662-b342-4fc7-9ce9-258c5d99e815}
Status          : OK

Index           : 2
FirmwareName    : System ROM
FirmwareVersion : U30 v1.20 (05/17/2017)
DeviceClass     : aa148d2e-6e09-453e-bc6f-63baa5f5ccc4
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205, 00000000-0000-0000-0000-000001553330, 
                  00000000-0000-0000-0000-0000018c3d8a, 00000000-0000-0000-0000-000001553330}
Status          : OK

Index           : 3
FirmwareName    : Intelligent Platform Abstraction Data
FirmwareVersion : 1.98.0 Build 9
DeviceClass     : b8f46d06-85db-465c-94fb-d106e61378ed
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205, 00000000-0000-0000-0000-000001553330, 
                  00000000-0000-0000-0000-0000018c3d8a, 00000000-0000-0000-0000-000001553330}
Status          : 

Index           : 4
FirmwareName    : System Programmable Logic Device
FirmwareVersion : 0x2A
DeviceClass     : b1ad439a-9dd1-41c1-a496-2da9313f1f07
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205}
Status          : OK

Index           : 5
FirmwareName    : Power Management Controller Firmware
FirmwareVersion : 1.0.0
DeviceClass     : 9e48a28a-586c-4519-8405-a04f84e27f0f
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205, 00000000-0000-0000-0000-000000504d05}
Status          : 

Index           : 6
FirmwareName    : Innovation Engine (IE) Firmware
FirmwareVersion : 0.1.0.25 
DeviceClass     : c734e171-8721-48c9-9ed6-d5bc7da5ef8d
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205, a6b1a447-382a-5a4f-3c10-3c100a000303}
Status          : OK

Index           : 7
FirmwareName    : Server Platform Services (SPS) Firmware
FirmwareVersion : 4.0.3.199
DeviceClass     : b34e5677-21dc-45d3-872b-42f76fee9053
DeviceInstance  : 
Location        : System Board
Targets         : {00000000-0000-0000-0000-000000000205, a6b1a447-382a-5a4f-3c10-86800a000101}
Status          : OK

Index           : 8
FirmwareName    : Redundant System ROM
FirmwareVersion : U30 v1.20 (07/01/2017)
DeviceClass     : 
DeviceInstance  : 
Location        : System Board
Targets         : 
Status          : 

Index           : 9
FirmwareName    : Intelligent Provisioning
FirmwareVersion : 3.00.382
DeviceClass     : ac963eeb-ed78-4f36-c18c-29d85f34a0ac
DeviceInstance  : 
Location        : System Board
Targets         : 
Status          : 

Index           : 10
FirmwareName    : Power Management Controller FW Bootloader
FirmwareVersion : 1.0
DeviceClass     : 
DeviceInstance  : 
Location        : System Board
Targets         : 
Status          : 

Index           : 11
FirmwareName    : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
FirmwareVersion : 20.6.315
DeviceClass     : 
DeviceInstance  : PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)
Location        : Embedded LOM 1
Targets         : {a6b1a447-382a-5a4f-14e4-1657103c22be}
Status          : 

Index           : 12
FirmwareName    : HPE Smart Array P450ar
FirmwareVersion : 1.00
DeviceClass     : 
DeviceInstance  : PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)
Location        : Embedded RAID 1
Targets         : {a6b1a447-382a-5a4f-9005-028f103c0602}
Status          : 

Index           : 13
FirmwareName    : HPE Smart Array S100i SR Gen10
FirmwareVersion : N/A
DeviceClass     : 
DeviceInstance  : PciRoot(0x0)/Pci(0x1C,0x4)/Pci(0x0,0x7)
Location        : Embedded Storage
Targets         : {a6b1a447-382a-5a4f-103c-193f159000e4}
Status          : 

Index           : 14
FirmwareName    : Drive
FirmwareVersion : HPD1
DeviceClass     : f6de0320-2e0f-489a-b238-6dd8ae7c3811
DeviceInstance  : 
Location        : Embedded controller Port P1 Box 3 Bay 1
Targets         : {002340a5-4d00-314d-3030-304a464a5448}
Status          :
```

This cmdlet shows the usage of cmdlet on iLO 5 with connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 admin admin123 -Disablecertificateauthentication

PS C:\> Get-HPEiLOFirmwareInventory -Connection $connection | fl

FirmwareInformation : {HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation...}
IP                  : 10.20.30.40
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :

FirmwareInformation : {HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation, 
                      HPE.iLO.Response.RIBCL.FirmwareInformation...}
IP                  : 10.20.30.41
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :

FirmwareInformation : {HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation, 
                      HPE.iLO.Response.Redfish.FirmwareInformation...}
IP                  : 10.20.30.42
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :
```

This example shows the output on iLO 4 and iLO 5 with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.RIBCL.FirmwareInfo[] or HPE.iLO.Response.Redfish.FirmwareInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

