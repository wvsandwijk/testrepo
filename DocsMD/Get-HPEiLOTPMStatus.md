---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOTPMStatus

## SYNOPSIS
Gets the HPE Trusted Platform Module Information.

## SYNTAX

```
Get-HPEiLOTPMStatus [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOTPMStatus cmdlet retrieves the HPE Trusted Platform Module Information.
The response includes whether a TPM is supported, if a TPM is present, and whether the TPM is enabled, TPM module type, and TPM module version.
TPM module type and module version are displayed only if TPM is enabled.This cmdlet can be run against the servers whether or not the TPM is installed.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOTPMStatus


TPMSupported         : Yes
TPMPresent           : No
TPMState             : Absent
TrustedModuleType    : TPM 2.0
TrustedModuleVersion : 5.23
IP                   : 10.20.30.40
Hostname             : xyz.example.com
Status               : OK
StatusInfo           :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.41 -Username admin -Password admin123 

PS C:\> $o = ,$connection | Get-HPEiLOTPMStatus

PS C:\> $o


TPMPresent           : No
TPMState             : Absent
TrustedModuleType    : TPM 2.0
TrustedModuleVersion : 5.23
TPMHealth            : 
IP                   : 10.20.30.41
Hostname             : 
Status               : OK
StatusInfo           :
```

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOTPMStatus -Connection $connection 

TPMSupported         : Yes
TPMPresent           : No
TPMState             : Absent
TrustedModuleType    : TPM 2.0
TrustedModuleVersion : 5.23
IP                   : 10.20.30.40
Hostname             : xyz.example.com
Status               : OK
StatusInfo           : 

TPMPresent           : No
TPMState             : Absent
TrustedModuleType    : TPM 2.0
TrustedModuleVersion : 5.23
TPMHealth            : 
IP                   : 10.20.30.41
Hostname             : 
Status               : OK
StatusInfo           :
```

This cmdlet shows the output with an array of iLO connection objects passed as named parameter.

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
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.TPMStatus[] or HPE.iLO.Response.Redfish.TPMStatus[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

