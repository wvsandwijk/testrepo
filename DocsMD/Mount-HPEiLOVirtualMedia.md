---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Mount-HPEiLOVirtualMedia

## SYNOPSIS
Mounts the specified media image.

## SYNTAX

```
Mount-HPEiLOVirtualMedia [-Connection] <Connection[]> -ImageURL <String[]> -Device <String[]>
 [-VMWriteProtect <String[]>] [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Mount-HPEiLOVirtualMedia cmdlet mounts the media image specified in the ImageURL parameter and connects to the Virtual Media specified by the Device parameter.
You must purchase the iLO Advanced license to enable this feature.
This cmdlet specifies the location of the image to be used and will connect the device to the server.
To perform any other operation apart from Connect, use the Set-HPEiLOVirtualMediaStatus.
The cmdlet has the following parameters:
.
ImageURL
.
Device

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Mount-HPEiLOVirtualMedia  -Device Floppy -ImageURL http://10.1.2.3:8080/WinPENew.iso
```

This example mounts the image in iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Mount-HPEiLOVirtualMedia  -Device CD -ImageURL http://10.1.2.3:8080/WinPENew.iso
```

This example mounts the image in iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Mount-HPEiLOVirtualMedia -Connection $connection  -Device CD,USBStick -ImageURL http://10.1.2.3:8080/WinPENew.iso
```

This example mounts the image in iLO 4 and iLO 5, with an array of iLO connection objects passed as named parameter.

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

### -ImageURL
Specifies the URL for the media image.
The URL format is as follows:
protocol://username:password@hostname:port/filename,cgi-helper.
 - Protocol is mandatory and must be either http or https.
 - Username:password is optional.
 - Hostname is mandatory.
 - Port is optional.
 - Filename is mandatory.
 - Cgi-helper is optional.
This enables the virtual floppy to be writable.
In addition, the filename field can contain tokens that expand to host-specific strings:
- The %m token expands to the MAC address.
- The %i token expands to the IP address in dotted-quad form.
- The %h token expands to the hostname.
For example:
http://john:abc123@imgserver.company.com/disk/win98dos.bin,/cgi-bin/hpvfhelp.pl
https://imgserver.company.com/disk/boot%m.bin

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
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
The possible values are 'Yes' to enable Virtual Media write protect or 'No' to disable Virtual Media write protect.
This parameter is applicable only for the device Floppy.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Yes, No

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
If the example executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Set-HPEiLOVirtualMediaStatus]()

[Get-HPEiLOVirtualMediaStatus]()

[Dismount-HPEiLOVirtualMedia]()

[Connect-HPEiLO]()

