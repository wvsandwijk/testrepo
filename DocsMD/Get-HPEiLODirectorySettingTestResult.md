---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLODirectorySettingTestResult

## SYNOPSIS
Gets the Directory Setting Test Result.

## SYNTAX

```
Get-HPEiLODirectorySettingTestResult [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLODirectorySettingTestResult cmdlet gets the Directory Setting Test Result.
This cmdlet is supported on iLO 4 and iLO5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $out = ,$connection | Get-HPEiLODirectorySettingTestResult

PS C:\> $out

DirectoryTestResult : {HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult, 
                      HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult...}
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          : 

PS C:\> $out.DirectoryTestResult | fl

Test        : DirectoryServerDNSName
Status      : Failed
Description : Unable to resolve host name 

Test        : PingDirectoryServer
Status      : Failed
Description : 

Test        : ConnectToDirectoryServer
Status      : Failed
Description : Unable to connect to the directory server LDAP port within timeout. Verify 
              directory server address.

Test        : ConnectUsingSSL
Status      : Failed
Description : Unable to connect to directory server within timeout.

Test        : BindTODirectoryServer
Status      : Failed
Description : 

Test        : DirectoryAdministratorLogin
Status      : Failed
Description : 

Test        : UserAuthentication
Status      : Failed
Description : Unable to authenticate test user admin  [Internal Error]

Test        : UserAuthorization
Status      : Failed
Description : 

Test        : DirectoryUserContexts
Status      : Not Run
Description : 

Test        : LOMObjectExists
Status      : Not Run
Description :
```

This cmdlet shows the output on iLO 4 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLODirectorySettingTestResult -Connection $connection

DirectoryTestResult : {HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult, 
                      HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult...}
IP                  : 10.20.30.40
Hostname            : abcd.com
Status              : OK
StatusInfo          : 

DirectoryTestResult : {HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult, 
                      HPE.iLO.Response.RIBCL.TestResult, HPE.iLO.Response.RIBCL.TestResult...}
IP                  : 10.20.30.41
Hostname            : xyz.example.com
Status              : OK
StatusInfo          :
```

This cmdlet shows the output on iLO 4 with an array of iLO connection objects passed as named parameter.

### EXAMPLE 3
```
PS C:\> $con = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $test = $con | Get-HPEiLODirectorySettingTestResult

PS C:\> $test

DirectoryTestResult : {HPE.iLO.Response.Redfish.TestResult, HPE.iLO.Response.Redfish.TestResult, HPE.iLO.Response.Redfish.TestResult, HPE.iLO.Response.Redfish.TestResult...}
OverallStatus       : Failed
IP                  : 192.168.10.31
Hostname            : bl460cgen10-03.powershvpn.com
Status              : OK
StatusInfo          : 

PS C:\> $test.DirectoryTestResult

Test                        Status Description                                                                                         
----                        ------ -----------                                                                                         
DirectoryServerDNSName      Failed Unable to resolve host name                                                                         
PingDirectoryServer         Failed                                                                                                     
ConnectToDirectoryServer    Failed Unable to connect to the directory server LDAP port within timeout. Verify directory server address.
ConnectUsingSSL             Failed Unable to connect to directory server within timeout.                                               
BindToDirectoryServer       NotRun                                                                                                     
DirectoryAdministratorLogin NotRun                                                                                                     
UserAuthentication          NotRun                                                                                                     
UserAuthorization           Failed                                                                                                     
DirectoryUserContexts       NotRun                                                                                                     
LOMObjectExists             NotRun
```

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

### HPE.iLO.Response.RIBCL.iLO4.DirectoryGroupInfo[]
### HPE.iLO.Response.Redfish.DirectoryGroupInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Start-HPEiLODirectorySettingTest]()

[Stop-HPEiLODirectorySettingTest]()

