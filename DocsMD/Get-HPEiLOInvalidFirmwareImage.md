---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOInvalidFirmwareImage

## SYNOPSIS
IGets invalid firmware image details from iLO.

## SYNTAX

```
Get-HPEiLOInvalidFirmwareImage [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets invalid firmware image details such as Id, Created date, filename, size in bytes, and others from iLO.
This cmdlet works only on iLO 5.

## EXAMPLES

### EXAMPLE 1
```
PS C:\Windows\system32> $connection= Connect-HPEiLO 10.20.30.40 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32> $info = $connection | Get-HPEiLOInvalidFirmwareImage
PS C:\Windows\system32> $info
InvalidFirmwareImageInfo : {HPE.iLO.Response.Redfish.InvalidFirmwareImg}
IP                       : 10.20.30.40
Hostname                 : abc.com
Status                   : OK
StatusInfo               : 

PS C:\Windows\system32> $info.InvalidFirmwareImageInfo
Id          : 9f9ebbd5
Name        : Invalid iLO image
ImageUri    : /fwrepo/invalid/Invalid_iLO
Created     : 2018-06-22T05:13:02Z
DeviceClass : 2f317b9d-c9e3-4d76-bff6-b9d0d085a952
Filename    : Invalid_iLO
Filepath    : invalid/Invalid_iLO
SizeBytes   : 33554432
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\Windows\system32> $connection= Connect-HPEiLO 10.20.30.40,10.20.30.50 admin admin123 -DisableCertificateAuthentication
PS C:\Windows\system32> $info = ,$connection | Get-HPEiLOInvalidFirmwareImage
PS C:\Windows\system32> $info
InvalidFirmwareImageInfo : {HPE.iLO.Response.Redfish.InvalidFirmwareImg}
IP                       : 10.20.30.40
Hostname                 : abc.com
Status                   : OK
StatusInfo               : 

InvalidFirmwareImageInfo : {HPE.iLO.Response.Redfish.InvalidFirmwareImg}
IP                       : 10.20.30.50
Hostname                 : abcd.com
Status                   : OK
StatusInfo               :
```

This example shows the output on iLO 5 with an array of connection objects passed as pipeline parameter.

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

### HPE.iLO.Response.Redfish.InvalidFirmwareImage[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Get-HPEiLOFirmwareInventory]()

