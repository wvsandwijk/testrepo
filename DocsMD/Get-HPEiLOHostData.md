---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOHostData

## SYNOPSIS
Gets the host data displayed on the Server Information page.

## SYNTAX

```
Get-HPEiLOHostData [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOHostData cmdlet gets the host data displayed on the Server Information page.
The data is extracted from SMBIOS records stored on the host.
The raw data in the SMBIOS records is retrieved using this cmdlet.
You can access the data by base 64 decoding the returned data.
The same fields that are displayed on the web page are also decoded through this interface.

## EXAMPLES

### EXAMPLE 1
```
PS C:\>$connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 
    
PS C:\>$output = ,$connection | Get-HPEiLOHostData
     
PS C:\>$output 
    
SMBIOSRecord : {HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord,  HPE.iLO.DataEntity.SMBIOSRecord...}
IP                     : 10.20.30.40
Hostname         : xyz.example.com
Status               : OK
    
PS C:\>$output.SMBIOSRecord | fl
    
B64Data : ABgIAAECAPAD/4DayX0AAAAAAw8CKgI1SFAAUDg5ADA0LzI1LzIwMTcAAA==
Field   : {Family, Date}
Type    : 0
    
B64Data : ARsJCAAM3NTI2ODlNUwQ0JKBgQFSFAAUHJvTGlhbnQgREwzODAgR2VuOQBNWFE1NDUwQ0JKADc1MjY4OS1CMjEAUHJvTGlhbnQAAA==       
Field   : {Product Name, Serial Number, UUID, cUUID}
Type    : 1
    
B64Data : AhEoAAECAAMEDQUAAAoAAFudCBETDM4MCBHZW45AE1YUTU0NTBDQkoASFBFIFByb2xpYW50IFIICAgICAgICAgICAgAAA=
Field   : 
Type    : 2
    
B64Data : AxUpAAEXAAIDAwMDAgAAAAACAgADSFAATVhRNTQ1MENCSgBIUEUgUHJvbGlhbnQgU2VydmVyAAA=
Field   : 
Type    : 3
    
B64Data : BCoDAAEDswUHJvYyAxAEludGVsKFIpIENvcnBvcmF0aW9uAEludGVsKFIpIFhlb24oUikgQ1BVIh6AFVOS05PV04AAA==
Field   : {Label, Speed, Execution Technology, Memory Technology}
Type    : 4
    
B64Data :  BCoHAAEDswLyvYyAyAEludGVsKFIpIENvcnBvcmF0aW9uAEludGVsKFIpIFhlb24oUikgQ1BVIEU1LTI2NTVOS05PV04AAA==
Field   : {Label, Speed, Execution Technology, Memory Technology}
Type    : 4
    
B64Data : BxMAAAGAAYACgAIgACAAAAUFB0wxLUNhY2hlAAA=
Field   : 
Type    : 7
```

This example shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\>$connection = Connect-HPEiLO 10.20.30.42 -Username admin -Password admin123 
    
PS C:\>$output = ,$connection | Get-HPEiLOHostData
     
PS C:\>$output 
    
SMBIOSRecord : {HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord...}
IP                     : 10.20.30.42
Hostname         : xyz.example.com
Status               : OK
    
PS C:\>$output.SMBIOSRecord | fl
    
B64Data : ABgIAAECAPAD/4DayX0AAAAAAw8CKgI1SFAAUDg5ADA0LzI1LzIwMTcAAA==
Field   : {Family, Date}
Type    : 0
    
B64Data : ARsJCAAM3NTI2ODlNUwQ0JKBgQFSFAAUHJvTGlhbnQgREwzODAgR2VuOQBNWFE1NDUwQ0JKADc1MjY4OS1CMjEAUHJvTGlhbnQAAA==       
Field   : {Product Name, Serial Number, UUID, cUUID}
Type    : 1
    
B64Data : AhEoAAECAAMEDQUAAAoAAFudCBETDM4MCBHZW45AE1YUTU0NTBDQkoASFBFIFByb2xpYW50IFIICAgICAgICAgICAgAAA=
Field   : 
Type    : 2
    
B64Data : AxUpAAEXAAIDAwMDAgAAAAACAgADSFAATVhRNTQ1MENCSgBIUEUgUHJvbGlhbnQgU2VydmVyAAA=
Field   : 
Type    : 3
    
B64Data : BCoDAAEDswUHJvYyAxAEludGVsKFIpIENvcnBvcmF0aW9uAEludGVsKFIpIFhlb24oUikgQ1BVIh6AFVOS05PV04AAA==
Field   : {Label, Speed, Execution Technology, Memory Technology}
Type    : 4
    
B64Data :  BCoHAAEDswLyvYyAyAEludGVsKFIpIENvcnBvcmF0aW9uAEludGVsKFIpIFhlb24oUikgQ1BVIEU1LTI2NTVOS05PV04AAA==
Field   : {Label, Speed, Execution Technology, Memory Technology}
Type    : 4
    
B64Data : BxMAAAGAAYACgAIgACAAAAUFB0wxLUNhY2hlAAA=
Field   : 
Type    : 7
```

This example shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41,10.20.30.42 -Username admin -Password admin123 
    
PS C:\> Get-HPEiLOHostData -Connection $connection | fl
    
SMBIOSRecord : {HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord...}
IP           : 10.20.30.40
Hostname     : xyz.example.com
Status       : OK
    
SMBIOSRecord : {HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord...}
IP           : 10.20.30.41
Hostname     : xyz.example.com
Status       : OK
    
SMBIOSRecord : {HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord, HPE.iLO.DataEntity.SMBIOSRecord...}
IP           : 10.20.30.42
Hostname     : xyz.example.com
Status       : OK
```

This example shows the output with an array of iLO connection objects passed as named parameter.

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

### HPE.iLO.Response.HostDataInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Read-HPEiLOSMBIOSRecord]()

