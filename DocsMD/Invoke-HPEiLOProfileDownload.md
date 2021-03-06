---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Invoke-HPEiLOProfileDownload

## SYNOPSIS
Modifies a Profile Description, downloads a specific blob, and writes the blob in permanent(perm) and temporary(tmp) directory of the blob store.

## SYNTAX

```
Invoke-HPEiLOProfileDownload [-Connection] <Connection[]> -ProfileDescriptionName <String[]>
 [-ProfileName <String[]>] [-ProfileDescription <String[]>] -BLOBNameSpace <String[]> -BLOBName <String[]>
 -URL <String[]> [-OutputType <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
The Invoke-HPEiLOProfileDownload cmdlet adds the description to a profile.
It also downloads a specific blob to the blob store.
A blob store is a region of memory that is accessible by both the iLO and the embedded software environment.
Management software can communicate with the embedded environment through the iLO by reading and writing files to the permanent(perm) and temporary(tmp) directory of the blob store.
This eliminates the need to communicate through the server's production network interfaces.
This cmdlet is supported only on iLO 4 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Invoke-HPEiLOProfileDownload -ProfileDescriptionName admin123 -ProfileName admin -ProfileDescription basicprofile -BLOBNameSpace Permanent -BLOBName name
```

This cmdlet shows the usage of the cmdlet in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\>Invoke-HPEiLOProfileDownload -Connection $connection -ProfileDescriptionName admin123 -ProfileName admin -ProfileDescription basicprofile -BLOBNameSpace Permanent -BLOBName name
```

This cmdlet shows the usage of the cmdlet in which the connection object is passed as named parameter.

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

### -ProfileDescriptionName
This parameter specifies the descriptive name of the profile.
The value must be unique on the server and be a maximum of 27 characters long.
Only alphanumerics and underscores are accepted.
Spaces, periods, and slashes are invalid.
An empty string is also invalid.

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

### -ProfileName
Specifies the name of the profile.
This value is optional and accepts free-form text.
Empty strings are invalid.
The string can be 512 characters long.

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

### -ProfileDescription
Specifies a description of the profile.
This value is optional and accepts free-form text.
Empty strings are invalid.

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

### -BLOBNameSpace
Specifies an internal iLO storage indicator.
Allowed values are Permanent and Temporary.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Permanent, Temporary

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BLOBName
Specifies the name iLO will use to store the profile internally.
This value can be a maximum of 31 characters long.
Only alphanumerics and underscores are accepted; spaces, periods, and slashes are invalid.
Hewlett Packard Enterprise recommends that you use the same value as ProfileDescriptionName.

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

### -URL
Specifies the URL from which iLO will attempt to download the profile for local storage if BLOBNamespace and BLOBName are not used.

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

[Connect-HPEiLO]()

[Remove-HPEiLOProfile]()

[Invoke-HPEiLOProfileApply]()

[Get-HPEiLOProfile]()

[Get-HPEiLOProfileApplyResult]()

