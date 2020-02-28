---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOInstallSet

## SYNOPSIS
Gets the install set detail.

## SYNTAX

```
Get-HPEiLOInstallSet [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOInstallSet cmdlet gets the install set detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLOInstallSet

PS C:\> $out

InstallSetInfo : {HPE.iLO.Response.Redfish.InstallSetInfo}
IP             : 10.20.30.2
Hostname       : abcd.com
Status         : OK
StatusInfo     : 

PS C:\> $out.InstallSetInfo

Id          : a74b22b6
Created     : 6/30/2017 6:18:50 PM
Description : Essential system firmware components
IsRecovery  : true
Modified    : 6/30/2017 6:18:50 PM
Name        : System Recovery Set
Sequence    : {HPE.iLO.Response.Redfish.Sequence, HPE.iLO.Response.Redfish.Sequence, 
              HPE.iLO.Response.Redfish.Sequence, HPE.iLO.Response.Redfish.Sequence...}

PS C:\> $out.InstallSetInfo[0].Sequence

Command         : ApplyUpdate
Component       : /redfish/v1/UpdateService/ComponentRepository/b00b43a7
Filename        : ilo5_115.bin
ComponentName   : comp1
UpdatableBy     : {Bmc}
WaitTimeSeconds : 

Command         : ApplyUpdate
Component       : /redfish/v1/UpdateService/ComponentRepository/0d51810a
Filename        : IEGen10_0.1.5.2.signed.bin
ComponentName   : System Recovery Set item (Innovation Engine)
UpdatableBy     : {Bmc}
WaitTimeSeconds : 

Command         : ApplyUpdate
Component       : /redfish/v1/UpdateService/ComponentRepository/26b7abcb
Filename        : CPLD_DL360_DL380_Gen10_VP1_v2A2A_full_signed.vme
ComponentName   : System Recovery Set item (System Programmable Logic Device)
UpdatableBy     : {Bmc}
WaitTimeSeconds : 

Command         : ApplyUpdate
Component       : /redfish/v1/UpdateService/ComponentRepository/b9a1ecb4
Filename        : U30_1.26_11_14_2017.signed.flash
ComponentName   : System Recovery Set item (System ROM)
UpdatableBy     : {Bmc}
WaitTimeSeconds : 

Command         : ApplyUpdate
Component       : /redfish/v1/UpdateService/ComponentRepository/47a612b8
Filename        : SPSGen10_04.00.04.288.signed.bin
ComponentName   : System Recovery Set item (Server Platform Services)
UpdatableBy     : {Bmc}
WaitTimeSeconds :
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLOInstallSet -Connection $connection

InstallSetInfo : {HPE.iLO.Response.Redfish.InstallSetInfo}
IP             : 10.20.30.1
Hostname       : xyz.example.com
Status         : OK
StatusInfo     : 

InstallSetInfo : {HPE.iLO.Response.Redfish.InstallSetInfo}
IP             : 10.20.30.2
Hostname       : abcd.com
Status         : OK
StatusInfo     :
```

This example shows the output on iLO 5 with an array of connection objects passed as named parameter.

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

### HPE.iLO.Response.Redfish.InstallSet[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Add-HPEiLOInstallSet]()

[Remove-HPEiLOInstallSet]()

[Invoke-HPEiLOInstallSet]()

[Clear-HPEiLOInstallSet]()

