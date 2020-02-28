---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLOPersistentBootOrder

## SYNOPSIS
Sets the persistent boot order.

## SYNTAX

```
Set-HPEiLOPersistentBootOrder [-Connection] <Connection[]> -BootOrder <String[][]> [-OutputType <String>]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLOPersistentBootOrder cmdlet sets the persistent boot order.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $order = ,@("FLOPPY","HDD","USB","CDROM","NETWORK1")

PS C:\>,$connection | Set-HPEiLOPersistentBootOrder -BootOrder $order
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $order = ,@("NIC.FlexLOM.1.1.Httpv6","Shell.Emb.1.2","HD.Slot.5.2","Generic.USB.1.1","HD.Slot.5.3")

PS C:\> $obj = Set-HPEiLOPersistentBootOrder -Connection $connection -BootOrder $order

PS C:\> $obj

IP            Hostname                          Status StatusInfo                 
--            --------                          ------ ----------                 
10.20.30.2 xyz.example.com INFORMATION HPE.iLO.Response.StatusInfo



PS C:\> $obj.StatusInfo

Category Message             AffectedAttribute
-------- -------             -----------------
 General SystemResetRequired
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $order  = @(@("NETWORK1","CDROM","USB","HDD","FLOPPY"),@("HD.Slot.5.3","Generic.USB.1.1","HD.Slot.5.2","Shell.Emb.1.2","NIC.FlexLOM.1.1.Httpv6"))

PS C:\> Set-HPEiLOPersistentBootOrder -Connection $connection -BootOrder $order
```

This cmdlet sets the value of Boot Order on iLO 4 and iLO 5 with the connection object passed as named parameter.

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

### -BootOrder
The possible set of values for the boot devices is different for different iLOs.

iLO 4: Specifies one or more boot devices from CDROM, FlexibleLOM, EmbeddedLOM, NIC, HDD, SA_HDD, USB_HDD, or PCI_DEVICE in a comma-separated-string format for each server.

If you do not list every option, the remaining options are shifted toward the bottom of the list.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: True
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
System.String[][]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOPersistentBootOrder]()

