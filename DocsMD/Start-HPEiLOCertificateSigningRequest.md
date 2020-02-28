---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Start-HPEiLOCertificateSigningRequest

## SYNOPSIS
Starts the certificate signing request generation in iLO.

## SYNTAX

```
Start-HPEiLOCertificateSigningRequest [-Connection] <Connection[]> -State <String[]> -Country <String[]>
 -City <String[]> -Organization <String[]> [-OrganizationalUnit <String[]>] -CommonName <String[]>
 [-IncludeiLOIP] [-Force] [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Start-HPEiLOCertificateSigningRequest cmdlet starts the certificate signing request generation in iLO.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $output = ,$connection | Start-HPEiLOCertificateSigningRequest -State QWERTY -Country AB -City Dummy -Organization XYZ -OrganizationalUnit 1234ABC -CommonName common

PS C:\>  $output | fl

IP         : 10.20.30.40
Hostname   : abcd.com
Status     : INFORMATION
StatusInfo : HPE.iLO.Response.StatusInfo 

PS C:\> $output.StatusInfo | fl

Category          : General
Message           : GeneratingCertificate
AffectedAttribute :
```

This cmdlet starts the certificate signing request on iLO 4, in which the connection object is passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $output = ,$connection | Start-HPEiLOCertificateSigningRequest -State QWERTY -Country AB -City Dummy -Organization XYZ -OrganizationalUnit 1234ABC -CommonName common -IncludeiLOIP

PS C:\>  $output | fl

IP         : 10.20.30.40
Hostname   : abcd.com
Status     : INFORMATION
StatusInfo : HPE.iLO.Response.StatusInfo 

PS C:\> $output.StatusInfo | fl

Category          : General
Message           : GeneratingCertificate
AffectedAttribute :
```

This cmdlet starts the certificate signing request on iLO 5, in which the connection object is passed as pipeline input.

### EXAMPLE 3
```
PS C:\ > $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2,10.20.30.3 -Username admin -Password admin123 

PS C:\> $output = Start-HPEiLOCertificateSigningRequest -Connection $connection -State QWERTY -Country AB -City Dummy -Organization XYZ -OrganizationalUnit 1234ABC -CommonName common
```

This cmdlet starts the certificate signing request on iLO 4 and iLO 5, in which an array of connection objects is passed as named parameter.

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

### -State
Specifies the state in which the company or organization that owns the iLO subsystem is located.

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

### -Country
Specifies the country code for the country in which the company or organization that owns the iLO subsystem is located.
The country code input should be only two characters and in capital letters.

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

### -City
Specifies the city or locality in which the company or organization that owns the iLO subsystem is located.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Locality

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Organization
Specifies the name of the company or organization that owns the iLO subsystem.

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

### -OrganizationalUnit
The unit within the company or organization that owns the iLO subsystem

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

### -CommonName
The FQDN of the iLO subsystem.

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

### -IncludeiLOIP
Includes the iLO IP along with the certificate.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
@{Text=}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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
The cmdlet returns Status and StatusInfo as PSObject.

## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOCertificateSigningRequest]()

