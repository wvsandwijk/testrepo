---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOVirtualMediaStatus

## SYNOPSIS
Gets the Virtual Media drive status.

## SYNTAX

```
Get-HPEiLOVirtualMediaStatus [-Connection] <Connection[]> [-Device <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOVirtualMediaStatus cmdlet gets the Virtual Media drive status.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOVirtualMediaStatus -Device Floppy

Device         : {Floppy}
ImageInserted  : Yes
ImageURL       : http://ioctrac.chn.hpe.com/trac/raw-attachment/wiki/Poseidon/aj764.iso
VMApplet       : Disconnected
VMBootOption   : NoBoot
VMWriteProtect : Enabled
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     :
```

This cmdlet shows the output of the cmdlet in iLO 4 for the device Floppy, when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLOVirtualMediaStatus 

PS C:\> $out

VirtualMediaInformation : {HPE.iLO.Response.Redfish.VirtualMediaDetail, 
                          HPE.iLO.Response.Redfish.VirtualMediaDetail}
IP                      : 10.20.30.40
Hostname                : abcd.com
Status                  : OK
StatusInfo              : 

PS C:\> $out.VirtualMediaInformation

ConnectedVia   : Disconnected
Device         : {Floppy, USBStick}
ImageInserted  : No
ImageName      : 
ImageURL       : 
VMWriteProtect : No
VMBootOption   : 

ConnectedVia   : Disconnected
Device         : {CD, DVD}
ImageInserted  : No
ImageName      : 
ImageURL       : 
VMWriteProtect : Yes
VMBootOption   : NoBoot
```

This cmdlet shows the output of the cmdlet in iLO 5, when the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOVirtualMediStatus -Connection $connection -Device CD | fl

Device         : {CD}
ImageInserted  : No
ImageURL       : 
VMApplet       : Disconnected
VMBootOption   : NoBoot
VMWriteProtect : Disabled
IP             : 10.20.30.40
Hostname       : abcd.com
Status         : OK
StatusInfo     : 

ConnectedVia   : Disconnected
Device         : {CD, DVD}
ImageInserted  : No
ImageName      : 
ImageURL       : 
VMWriteProtect : Yes
VMBootOption   : NoBoot
IP             : 10.20.30.41
Hostname       : xyz.example.com
Status         : OK
StatusInfo     :
```

This cmdlet shows the output of iLO 4 and iLO 5 with an array of iLO connection objects passed as named parameter.

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

### -Device
Device specifies the Virtual Media device target.
The possible values are Floppy, CD, USBStick, and DVD.
These values are not case sensitive.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: CD, Floppy, USBStick, DVD

Required: False
Position: Named
Default value: Floppy
Accept pipeline input: True (ByPropertyName)
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
System.String[]
## OUTPUTS

### HPE.iLO.Response.RIBCL.VirtualMediaStatus[] or HPE.iLO.Response.Redfish.VirtualMediaStatus[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Mount-HPEiLOVirtualMedia]()

[Set-HPEiLOVirtualMediaStatus]()

