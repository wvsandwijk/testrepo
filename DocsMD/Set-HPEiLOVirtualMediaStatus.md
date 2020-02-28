---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOVirtualMediaStatus

## SYNOPSIS
Sets the virtual media drive status.

## SYNTAX

```
Set-HPEiLOVirtualMediaStatus [-Connection] <Connection[]> [-VMBootOption <String[]>] -Device <String[]>
 [-VMWriteProtect <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOVirtualMediaStatus cmdlet sets the virtual media drive status.
All the parameters in the command are optional.
You must purchase the iLO Advanced license to enable this feature.
You must have Virtual Media privilege to execute This cmdlet.
The cmdlet has the following parameters:

• Device
• VMBootOption
• VMWriteProtect (Supported only on iLO 4 servers)

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\ > ,$connection | Set-HPEiLOVirtualMediaStatus -Device Floppy  -VMWriteProtect Enabled -VMBootOption BootAlways
```

This cmdlet sets the Virtual Media settings of iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\ > ,$connection | Set-HPEiLOVirtualMediaStatus -Device CD -VMBootOption BootOnNextReset
```

This cmdlet sets the Virtual Media settings of iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\ > $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\ > Set-HPEiLOVirtualMediaStatus -Connection $connection -VMBootOption BootAlways,BootOnNextReset,Disconnect -Device CD,Floppy,CD
```

This cmdlet sets the Virtual Media settings of iLO 4 and iLO 5, in which the connection object is passed as named parameter.

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

### -VMBootOption
Specifies the boot option parameter for the Virtual Media.
The possible values are BootAlways, BootOnce, or NoBoot.
These values control how the Virtual Media device behaves during the boot phase of the server.
Setting these values does not affect the current state of the Virtual Media device.
These settings only take effect if the Virtual Media device is connected at server boot.
BootAlways sets theVMBootOption to BootAlways.
The Virtual Media device is always connected during server boot.
BootOnNextReset sets VMBootOption to BootOnce.
The Virtual Media device is connected during the next server boot, but on any subsequent server boots, it does not connect.
The BootOnNextReset option is intended to boot one time to the Virtual Media device, use that device while the server is running, and then not have the Virtual Media device available on subsequent server reboots.
After the server has booted once with the Virtual Media device connected, on the subsequent server reboot, the Virtual Media device does not connect and the following Virtual Media device settings reset to their default values:
• BootOption = NoBoot
• ImageInserted = No
NoBoot sets VMBootOption to NoBoot.
The Virtual Media device is not connected during the next server boot.
After the server has booted, the Virtual Media device does not connect and the following Virtual Media device settings reset to their default values:
• BootOption = NoBoot
• ImageInserted = No
In addition to VMBootOption, Connect and Disconnect are possible values.
The Connect and Disconnect settings can be used to control the Virtual Media devices in the same way that they are controlled in the Virtual Media applet.
Whenever the Connect or Disconnect parameters are set, the Virtual Media device immediately connects to the server or disconnects from the server.
Connect sets VMBootOption to Connect.
The Virtual Media device is immediately connected to the server.
Setting VMBootOption to Connect is equivalent to clicking the device Connect button on the Virtual Media Applet.
After setting VMBootOption to Connect, the Get-HPEiLOVirtualMediaStatus command shows VMBootOption as BootAlways.
This is by design and indicates that the Virtual Media device is connected like the Virtual Media device in the applet, which is always connected during all server boots.
Disconnect sets VMBootOption to Disconnect.
The Virtual Media device is immediately disconnected from the server.
Setting VMBootOption to Disconnect is equivalent to clicking the device Disconnect button on the VirtualMedia Applet.
In addition, setting the VMBootOption to Disconnect is equivalent to issuing the Dismount-HPEiLOVirtualMedia command.
When the VMBootOption is set to Disconnect, the Virtual Media device does not connect and the following Virtual Media device settings are reset to their default values:
• BootOption = NoBoot
• ImageInserted = No
In case of iLO 5 servers, BootOnNextReset and NoBoot are the only supported values.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Connect, Disconnect, BootAlways, BootOnNextReset, NoBoot

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Device
Specifies the Virtual Media device target.
The possible values are Floppy, CD, USBStick, and DVD.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: CD, Floppy, USBStick, DVD

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VMWriteProtect
Sets the write protect flag value for the Virtual Floppy.
The possible values are Enabled to enable Virtual Media write protect or Disabled to disable Virtual Media write protect.
This parameter is not supported in iLO 5 servers.
This parameter is applicable only for the device Floppy.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Enabled, Disabled

Required: False
Position: Named
Default value: None
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

### -Force
Suppresses the prompt that asks for a required parameter.
Without this parameter, the cmdlet requires you to provide the values of all required parameters that are missing, interactively.
Setting this will cause an error for any missing required parameters.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
System.String[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOVirtualMediaStatus]()

[Connect-HPEiLO]()

[Mount-HPEiLOVirtualMedia]()

