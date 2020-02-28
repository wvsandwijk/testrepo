---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOOneTimeBootOption

## SYNOPSIS
Sets one time boot option.

## SYNTAX

```
Set-HPEiLOOneTimeBootOption [-Connection] <Connection[]> [-BootSourceOverrideEnable <String[]>]
 [-BootSourceOverrideTarget <String[]>] [-BootCustomName <String[]>] [-UEFITargetBootSourceOverride <String[]>]
 [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOOneTimeBootOption cmdlet sets one time boot order.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOOneTimeBootOption -BootSourceOverrideTarget CD
```

This cmdlet sets the one time boot order in iLO 4 server when the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOOneTimeBootOption -BootSourceOverrideEnable Continuous -BootSourceOverrideTarget CD
```

This cmdlet sets the one time boot order when BootMode is Legacy in iLO 5 server when the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> ,$connection | Set-HPEiLOOneTimeBootOption -BootSourceOverrideEnable Continuous -UEFITargetBootSourceOverride "UsbClass(0xFFFF,0xFFFF,0xFF,0xFF,0xFF)"
```

This cmdlet sets the one time boot order when BootMode is Uefi in iLO 5 server when the connection object is passed as pipeline input.

### EXAMPLE 4
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Set-HPEiLOOneTimeBootOption -Connection $connection -BootSourceOverrideTarget CD
```

This cmdlet sets the One time boot order in iLO 4 and iLO 5 and the connection object is passed as named parameter.

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

### -BootSourceOverrideEnable
BootSourceOverrideTarget must be specified before BootSourceOverrideEnable can be used.
Supported values are Disabled, Once, and Continuous.
• Disabled: The system will boot normally.
• Once: On its next boot cycle, the system will boot (one time) to the Boot Source Override Target.
The value of BootSourceOverrideEnabled is then reset back to Disabled.
• Continuous: The system will boot to the target specified in the BootSourceOverrideTarget until this property is set to Disabled.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, Once, Continuous

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BootSourceOverrideTarget
The current boot source to be used at next boot instead of the normal boot device, if BootSourceOverrideEnable is set to Once or Continuous.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: None, PXE, Floppy, CD, USB, HDD, BIOSSetup, Diags, UEFIShell, UEFITarget, SDCard, UEFIHTTP, Emb-Menu, Emb-ACU, Emb-HPSUM-Auto, IntelligentProvisioning, BootCustom

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BootCustomName
If a device's value is BootCustom, BootCustomName becomes a required input parameter, and the value must have the format: Bootxxxx (for example, Boot0009).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UEFITargetBootSourceOverride
This parameter is the UEFI Device Path of the device to boot from when BootSourceOverrideTarget is UefiTarget.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

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

[Connect-HPEiLO]()

[Get-HPEiLOOneTimeBootOption]()

