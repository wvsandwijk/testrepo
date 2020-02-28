---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLORedfishMessageInfo

## SYNOPSIS
Gets the Redfish message detail.

## SYNTAX

```
Get-HPEiLORedfishMessageInfo [-Connection] <Connection[]> [-MessageID <String[]>] [-OutputType <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLORedfishMessageInfo cmdlet gets the Redfish message detail.
This cmdlet is supported only on iLO 5 servers.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLORemoteSupportSetting

PS C:\> $out

AccessDenied                                                    : HPE.iLO.Response.Redfish.MessageIDInfo
AccountForSessionNoLongerExists                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountModified                                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountNotModified                                              : HPE.iLO.Response.Redfish.MessageIDInfo
AccountRemoved                                                  : HPE.iLO.Response.Redfish.MessageIDInfo
ActionNotSupported                                              : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterDuplicate                                        : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterMissing                                          : HPE.iLO.Response.Redfish.MessageIDInfo
IP                                                              : 10.20.30.1
Hostname                                                        : abcd.com
Status                                                          : OK
StatusInfo                                                      : 

PS C:\> $out.AccessDenied

Description  : While attempting to access, connect to, or transfer to/from another resource, the service was denied 
               access.
Message      : While attempting to establish a connection to %1, the service was denied access.
NumberOfArgs : 1
ParamTypes   : {String}
Resolution   : Verify that the URI is correct and that the service has the appropriate credentials.
Severity     : Critical
Oem          :
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> $out = ,$connection | Get-HPEiLORedfishMessageInfo -MessageID AHSDisabled

PS C:\> $out

MessageInfo : {AHSDisabled}
IP          : 10.20.30.1
Hostname    : abcd.com
Status      : OK
StatusInfo  : 


PS C:\> $out.MessageInfo

MessageID    : AHSDisabled
Description  : Modifying AHS properties is not possible with AHS disabled.
Message      : Modifying AHS properties is not possible with AHS disabled.
NumberOfArgs : 0
ParamTypes   : {}
Resolution   : Enable AHS, and then modify the AHS properties.
Severity     : Warning
Oem          :
```

This cmdlet shows the output on iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 3
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.1,10.20.30.2 -Username admin -Password admin123 -DisableCertificateAuthentication

PS C:\> Get-HPEiLORedfishMessageInfo -Connection $connection

AccessDenied                                                    : HPE.iLO.Response.Redfish.MessageIDInfo
AccountForSessionNoLongerExists                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountModified                                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountNotModified                                              : HPE.iLO.Response.Redfish.MessageIDInfo
AccountRemoved                                                  : HPE.iLO.Response.Redfish.MessageIDInfo
ActionNotSupported                                              : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterDuplicate                                        : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterMissing                                          : HPE.iLO.Response.Redfish.MessageIDInfo
IP                                                              : 10.20.30.1
Hostname                                                        : abcd.com
Status                                                          : OK
StatusInfo                                                      : 

AccessDenied                                                    : HPE.iLO.Response.Redfish.MessageIDInfo
AccountForSessionNoLongerExists                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountModified                                                 : HPE.iLO.Response.Redfish.MessageIDInfo
AccountNotModified                                              : HPE.iLO.Response.Redfish.MessageIDInfo
AccountRemoved                                                  : HPE.iLO.Response.Redfish.MessageIDInfo
ActionNotSupported                                              : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterDuplicate                                        : HPE.iLO.Response.Redfish.MessageIDInfo
ActionParameterMissing                                          : HPE.iLO.Response.Redfish.MessageIDInfo
IP                                                              : 10.20.30.2
Hostname                                                        : xyz.com
Status                                                          : OK
StatusInfo                                                      :
```

This cmdlet shows the output on iLO 5 with the connection object passed as named parameter.

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

### -MessageID
The message ID returned from Redfish Uri.

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

### HPE.iLO.Response.Redfish.RedfishMessageInfoDetail[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

