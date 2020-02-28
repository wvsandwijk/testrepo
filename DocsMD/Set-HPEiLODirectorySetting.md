---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Set-HPEiLODirectorySetting

## SYNOPSIS
Modifies the directory setting.

## SYNTAX

```
Set-HPEiLODirectorySetting [-Connection] <Connection[]> [-LDAPDirectoryAuthentication <String[]>]
 [-LocalUserAccountEnabled <String[]>] [-DirectoryServerAddress <String[]>] [-DirectoryServerPort <String[]>]
 [-LOMObjectDN <String[]>] [-LOMObjectPassword <String[]>] [-GenericLDAPEnabled <String[]>]
 [-UserContext <String[][]>] [-UserContextIndex <Int32[][]>] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-HPEiLODirectorySetting cmdlet modifies the directory setting.
This cmdlet is supported on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1 -Username admin -Password admin123

PS C:\> $index = ,@(1,2)
PS C:\> $value = ,@("context1","context2")

PS C:\> ,$connection | Set-HPEiLODirectorySetting -LDAPDirectoryAuthentication DirectoryDefaultSchema -LocalUserAccountEnabled Yes -DirectoryServerAddress 1.1.1.1 -DirectoryServerPort 123 -LOMObjectDN abcd -LOMObjectPassword abcd.123 -UserContextIndex $index -UserContext $value
```

This cmdlet sets the directory setting on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.1,10.20.30.2 -Username admin -Password admin123

PS C:\> $index = ,@(1,2)
PS C:\> $value = ,@("context1","context2")

PS C:\> Set-HPEiLODirectorySetting -Connection $connection -LDAPDirectoryAuthentication DirectoryDefaultSchema -LocalUserAccountEnabled Yes -DirectoryServerAddress 1.1.1.1 -DirectoryServerPort 123 -LOMObjectDN abcd -LOMObjectPassword abcd.123 -UserContextIndex $index -UserContext $value
```

This cmdlet sets the directory setting on iLO 4 servers with an array of connection objects passed as named parameter.

### EXAMPLE 3
```
$con = Connect-HPEiLO 192.168.10.10,192.168.10.31 admin admin123 -DisableCertificateAuthentication

$out = $con | Set-HPEiLODirectorySetting -LDAPDirectoryAuthentication DirectoryDefaultSchema -LocalUserAccountEnabled Yes -GenericLDAPEnabled Yes -DirectoryServerAddress "192.168.1.1" -DirectoryServerPort 638 -UserContext "CN=Users2,DC=Powershvpn2,DC=Com" -UserContextIndex 1
```

This cmdlet sets the directory setting on iLO5 with the connection object passed as pipeline input.

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

### -LDAPDirectoryAuthentication
Enables or disables LDAP directory authentication.
The possible values are Disabled, ExtendedSchema, and DirectoryDefaultSchema.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Disabled, ExtendedSchema, DirectoryDefaultSchema

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LocalUserAccountEnabled
Enables or disables local user accounts.
The possible values are Yes to enable local user account or No to disable user account.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

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

### -DirectoryServerAddress
Specifies the location of the directory server.
The directory server location is specified as an IP address or DNS name.
The parameter is optional.
If a parameter is not specified, then the parameter value for the specified setting is preserved.

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

### -DirectoryServerPort
Specifies the port number used to connect to the directory server.
This value is obtained from the directory administrator.
The secure LDAP port is 636, but the directory server can be configured for a different port number.

Refer Notes of the cmdlet help before making any change to the default port.

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

### -LOMObjectDN
Specifies the unique name of iLO in the directory server.
This value is obtained from the directory administrator.
Distinguished names are limited to 256 characters.

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

### -LOMObjectPassword
Specifies the password associated with the iLO object in the directory server.
Passwords are limited to 39 characters.

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

### -GenericLDAPEnabled
Specifies that this configuration uses the OpenLDAP supported BIND method.
This setting is available only if Use Directory Default Schema is selected.

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

### -UserContext
Specifies searchable contexts used to locate the user when the user is trying to authenticate using directories.
If the user is not located using the first path, then the parameters specified in the second and third paths are used.
The values for these parameters are obtained from the directory administrator.
Directory User Contexts are limited to 128 characters each.

```yaml
Type: String[][]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserContextIndex
It is a number assigned to each user context detail that user passes to the cmdlet.
It starts from usercontexindex 1.

```yaml
Type: Int32[][]
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
System.Int32[][]
System.String[][]
## OUTPUTS

### None
If the cmdlet executes successfully, an object is returned with Status as Information.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
Because of iLO5 issue, if you modify port number (change the default number 636) then Start-HPEiLODirectorySettingTest will fail as iLO updates the Directory server address with port number as in it.(like IP:PORT format).
The workaround is if you want to modify port number of directory server LDAP then first input the required port number for set cmdlet then in second call try without port number just with directory server settings.

Set-HPEiLODirectorySetting -DirectoryServerAddress "192.168.1.1" -DirectoryServerPort "638"

Set-HPEiLODirectorySetting -DirectoryServerAddress "192.168.1.1"

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLODirectorySetting]()

