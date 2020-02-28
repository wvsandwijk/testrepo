---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLORepositoryComponent

## SYNOPSIS
Gets the Repository Component detail.

## SYNTAX

```
Get-HPEiLORepositoryComponent [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLORepositoryComponent gets the Repository Component detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLORepositoryComponent

PS C:\> $out

ComponentCount                 : 6
FreeSizeBytes                  : 982319104
TotalSizeBytes                 : 1073168384
RepositoryComponentInformation : {HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation...}
IP                             : 10.20.30.2
Hostname                       : abcd.com
Status                         : OK
StatusInfo                     : 

PS C:\> $out.RepositoryComponentInformation

Id                  : 47a612b8
Activates           : AfterReboot
ComponentUri        : /fwrepo/SPSGen10_04.00.04.288.signed.bin
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : b34e5677-21dc-45d3-872b-42f76fee9053
ExecutionParameters : 
Filename            : SPSGen10_04.00.04.288.signed.bin
Filepath            : SPSGen10_04.00.04.288.signed.bin
Locked              : True
Name                : Server Platform Services (SPS) Firmware
SizeBytes           : 8390998
Targets             : {a6b1a447-382a-5a4f-3c10-86800a000101}
UpdatableBy         : {Bmc}
Version             : 4.0.4.288

Id                  : 0d51810a
Activates           : AfterReboot
ComponentUri        : /fwrepo/IEGen10_0.1.5.2.signed.bin
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : c734e171-8721-48c9-9ed6-d5bc7da5ef8d
ExecutionParameters : 
Filename            : IEGen10_0.1.5.2.signed.bin
Filepath            : IEGen10_0.1.5.2.signed.bin
Locked              : True
Name                : Innovation Engine (IE) Universal Image
SizeBytes           : 8391008
Targets             : {a6b1a447-382a-5a4f-3c10-3c100a000303}
UpdatableBy         : {Bmc}
Version             : 0.1.5.2

Id                  : 26b7abcb
Activates           : AfterHardPowerCycle
ComponentUri        : /fwrepo/CPLD_DL360_DL380_Gen10_VP1_v2A2A_full_signed.vme
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : b1ad439a-9dd1-41c1-a496-2da9313f1f07
ExecutionParameters : 
Filename            : CPLD_DL360_DL380_Gen10_VP1_v2A2A_full_signed.vme
Filepath            : CPLD_DL360_DL380_Gen10_VP1_v2A2A_full_signed.vme
Locked              : True
Name                : System Programmable Logic Device
SizeBytes           : 1132559
Targets             : {00000000-0000-0000-0000-000000000205, 00000000-0000-0000-0000-000000000204, 
                      00000000-0000-0000-0000-000000000203}
UpdatableBy         : {Bmc}
Version             : 2A

Id                  : b9a1ecb4
Activates           : AfterReboot
ComponentUri        : /fwrepo/U30_1.26_11_14_2017.signed.flash
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : aa148d2e-6e09-453e-bc6f-63baa5f5ccc4
ExecutionParameters : 
Filename            : U30_1.26_11_14_2017.signed.flash
Filepath            : U30_1.26_11_14_2017.signed.flash
Locked              : True
Name                : System BIOS - U30
SizeBytes           : 33563252
Targets             : {00000000-0000-0000-0000-000000000205}
UpdatableBy         : {Bmc}
Version             : v1.26 (11/14/2017)

Id                  : b00b43a7
Activates           : AfterDeviceReset
ComponentUri        : /fwrepo/ilo5_115.bin
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : 2f317b9d-c9e3-4d76-bff6-b9d0d085a952
ExecutionParameters : 
Filename            : ilo5_115.bin
Filepath            : ilo5_115.bin
Locked              : True
Name                : iLO 5
SizeBytes           : 33556520
Targets             : {4764a662-b342-4fc7-9ce9-258c5d99e815}
UpdatableBy         : {Bmc}
Version             : 1.15

Id                  : b3abed50
Activates           : Immediately
ComponentUri        : /fwrepo/cp033330.exe
Configuration       : 
Created             : 6/30/2017 6:18:50 PM
Criticality         : Optional
DeviceClass         : 907bf452-0f78-4311-ab8a-4fc6f1c1688e
ExecutionParameters : 
Filename            : cp033330.exe
Filepath            : cp033330.exe
Locked              : False
Name                : HPE D6020 12Gb SAS Disk Enclosure ROM Flash Component for Wi...
SizeBytes           : 5529480
Targets             : {b99dfb74-f0bc-464f-b418-cd18f2a1a8e3}
UpdatableBy         : {RuntimeAgent}
Version             : 2.53
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLORepositoryComponent -Connection $connection

ComponentCount                 : 6
FreeSizeBytes                  : 982319104
TotalSizeBytes                 : 1073168384
RepositoryComponentInformation : {HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation...}
IP                             : 10.20.30.1
Hostname                       : xyz.example.com
Status                         : OK
StatusInfo                     : 

ComponentCount                 : 6
FreeSizeBytes                  : 982319104
TotalSizeBytes                 : 1073168384
RepositoryComponentInformation : {HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation, 
                                 HPE.iLO.Response.Redfish.RepositoryComponentInformation...}
IP                             : 10.20.30.2
Hostname                       : abcd.com
Status                         : OK
StatusInfo                     :
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

### HPE.iLO.Response.Redfish.RepositoryComponent[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLORepositoryComponent]()

[Remove-HPEiLORepositoryComponent]()

[Clear-HPEiLOUnlockedRepositoryComponent]()

