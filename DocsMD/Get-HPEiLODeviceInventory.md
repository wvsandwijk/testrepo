---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLODeviceInventory

## SYNOPSIS
Gets the device inventory detail.

## SYNTAX

```
Get-HPEiLODeviceInventory [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLODeviceInventory cmdlet gets the device inventory detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123

PS C:\> $out = ,$connection | Get-HPEiLODeviceInventory

PS C:\> $out

Devices             : {HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo, 
                      HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo...}
MCTPEnabledOnServer : True
IP                  : 10.20.30.2
Hostname            : abcd.com
Status              : OK
StatusInfo          : 

PS C:\> $out.Devices

DeviceType           : Unknown
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : Embedded LOM
Manufacturer         : 
Name                 : Empty
PartNumber           : 
ProductPartNumber    : 
ProductVersion       : 
SerialNumber         : 
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False

DeviceType           : Smart Storage Battery
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : Embedded Device
Manufacturer         : STL  
Name                 : HPE Smart Storage Battery
PartNumber           : 871264-001
ProductPartNumber    : 727258-B21
ProductVersion       : 01
SerialNumber         : 6WEJD0JB2887BD
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False

DeviceType           : LOM/NIC
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : Embedded LOM
Manufacturer         : 
Name                 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
PartNumber           : 
ProductPartNumber    : 
ProductVersion       : 
SerialNumber         : 
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False

DeviceType           : Smart Storage
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : Embedded RAID
Manufacturer         : 
Name                 : HPE Smart Array P816i-a SR Gen10
PartNumber           : 
ProductPartNumber    : 
ProductVersion       : 
SerialNumber         : 
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False

DeviceType           : Unknown
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : PCI-E Slot 1
Manufacturer         : 
Name                 : Empty slot 1
PartNumber           : 
ProductPartNumber    : 
ProductVersion       : 
SerialNumber         : 
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False

DeviceType           : Unknown
FirmwareVersion      : HPE.iLO.Response.Redfish.Firmwareversion
Location             : PCI-E Slot 2
Manufacturer         : 
Name                 : Empty slot 2
PartNumber           : 
ProductPartNumber    : 
ProductVersion       : 
SerialNumber         : 
Status               : HPE.iLO.Response.Redfish.Status
MCTPProtocolDisabled : False
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> Get-HPEiLODeviceInventory -Connection $connection

Devices             : {HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo, 
                      HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo...}
MCTPEnabledOnServer : True
IP                  : 10.20.30.1
Hostname            : xyz.com
Status              : OK
StatusInfo          : 

Devices             : {HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo, 
                      HPE.iLO.Response.Redfish.DeviceInfo, HPE.iLO.Response.Redfish.DeviceInfo...}
MCTPEnabledOnServer : True
IP                  : 10.20.30.2
Hostname            : abcd.com
Status              : OK
StatusInfo          :
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
Accepted values: PSObject, RawRequest, RawResponse

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

### HPE.iLO.Response.Redfish.IMLInfo[]
## NOTES
Enable device discovery using the Enable-HPEiLOMCTP setting cmdlet.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Enable-HPEiLOMCTP]()

[Disable-HPEiLOMCTP]()

