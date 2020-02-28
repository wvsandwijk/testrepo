---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Send-HPEiLOSystemRecoveryEvent

## SYNOPSIS
Generates a recovery event that triggers a separate management tool to initiate a full system recovery.

## SYNTAX

```
Send-HPEiLOSystemRecoveryEvent [-Connection] <Connection[]> [-OutputType <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Send-HPEiLOSystemRecoveryEvent cmdlet generates a recovery event that triggers a separate management tool to initiate a full system recovery.
Recovery involves installation of the System Recovery Set followed by reimaging the server operating system.
This cmdlet is supported in iLO 5 servers.

CAUTION: Reimaging a server might cause the loss of existing data.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\>  $connection  | Send-HPEiLORecoveryEvent
```

This cmdlet sends recovery event in iLO 5, when the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\ > Send-HPEiLORecoveryEvent -Connection $connection
```

This cmdlet sends recovery event in iLO 5, when array of connection objects is passed as named parameter.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### HPE.iLO.Response.Connection[]
## OUTPUTS

### None
If the cmdlet executes successfully, it does not return anything.
In case of an error or warning, Status and StatusInfo will be returned as PSObject.

## NOTES
Prerequisites:

.
Configure iLO Settings privilege
.
Virtual Media privilege
.
A license that supports this feature is installed.
For information about the available license types and the features they support, see the licensing documentation at the following website: http://www.hpe.com/support/ilo-docs.
.
A System Recovery Set exists in the iLO Repository.
.
A supported management tool (such as iLO Amplifier Pack 1.15 or later) is configured to manage the server.

After the execution of cmdlet the recovery event is sent to the management tool that is configured to listen for recovery events.

If the event was sent successfully, the following informational event is logged in the IML(Get-HPEiLOIML):
Firmware recovery is requested by Administrator.

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Get-HPEiLOIML]()

