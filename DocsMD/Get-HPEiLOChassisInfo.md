---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOChassisInfo

## SYNOPSIS
Gets the chassis information.

## SYNTAX

```
Get-HPEiLOChassisInfo [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets the comprehensive target chassis information.
This cmdlet is supported only on iLO5.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> $obj = Get-HPEiLOChassisInfo -Connection $connection

PS C:\> $obj | fl

Id                        : 1
AssetTag                  : 
ChassisType               : Blade
Description               : 
IndicatorLED              : 
Manufacturer              : HPE
Model                     : ProLiant BL460c Gen10
Name                      : Computer System Chassis
PartNumber                : 
PhysicalSecurity          : 
SKU                       : BL460cGen10
SerialNumber              : 2M270801TB
EnclosureIndicatorLED     : off
EnclosureModel            : 
EnclosureUUID             : 
BayNumber                 : 3
BaysConsumedHeight        : 1
BaysConsumedWidth         : 1
Firmware                  : HPE.iLO.Response.Redfish.ChassisFirmware
Images                    : 
OnboardAdministrator      : 
Location                  : 
MCTPEnabledOnServer       : 
PowerAlertMode            : HPE.iLO.Response.Redfish.PowerAlertMode
SmartStorageBattery       : 
SystemMaintenanceSwitches : HPE.iLO.Response.Redfish.SystemMaintenanceSwitches
ChassisStatus             : HPE.iLO.Response.Redfish.Status
IP                        : 10.20.30.40
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

PS C:\> $obj.ChassisStatus

Health State    HealthRollUp
------ -----    ------------
OK     Disabled
```

This example shows the output on iLO 5 with the connection object passed as named parameter.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.50 -Username admin -Password admin123 

PS C:\> $obj = ,$connection | Get-HPEiLOChassisInfo

PS C:\> $obj | fl

Id                        : 1
AssetTag                  : 
ChassisType               : Blade
Description               : 
IndicatorLED              : 
Manufacturer              : HPE
Model                     : ProLiant BL460c Gen10
Name                      : Computer System Chassis
PartNumber                : 
PhysicalSecurity          : 
SKU                       : BL460cGen10
SerialNumber              : 2M270801TB
EnclosureIndicatorLED     : Off
EnclosureModel            : 
EnclosureUUID             :
BayNumber                 : 3
BaysConsumedHeight        : 1
BaysConsumedWidth         : 1
Firmware                  : HPE.iLO.Response.Redfish.ChassisFirmware
Images                    : 
OnboardAdministrator      : 
Location                  : 
MCTPEnabledOnServer       : 
PowerAlertMode            : HPE.iLO.Response.Redfish.PowerAlertMode
SmartStorageBattery       : 
SystemMaintenanceSwitches : HPE.iLO.Response.Redfish.SystemMaintenanceSwitches
ChassisStatus             : HPE.iLO.Response.Redfish.Status
IP                        : 10.20.30.40
Hostname                  : ab.com
Status                    : OK
StatusInfo                : 

Id                        : 1
AssetTag                  : 
ChassisType               : Blade
Description               : 
IndicatorLED              : 
Manufacturer              : HPE
Model                     : ProLiant BL460 Gen10
Name                      : Computer System Chassis
PartNumber                : 
PhysicalSecurity          : 
SKU                       : BL460Gen10
SerialNumber              : 2M279601TC
EnclosureIndicatorLED     : Off
EnclosureModel            : 
EnclosureUUID             :
BayNumber                 : 3
BaysConsumedHeight        : 1
BaysConsumedWidth         : 1
Firmware                  : HPE.iLO.Response.Redfish.ChassisFirmware
Images                    : 
OnboardAdministrator      : 
Location                  : 
MCTPEnabledOnServer       : 
PowerAlertMode            : HPE.iLO.Response.Redfish.PowerAlertMode
SmartStorageBattery       : 
SystemMaintenanceSwitches : HPE.iLO.Response.Redfish.SystemMaintenanceSwitches
ChassisStatus             : HPE.iLO.Response.Redfish.Status
IP                        : 10.20.30.50
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

PS C:\> $obj[0].ChassisStatus

Health State    HealthRollUp
------ -----    ------------
OK     Disabled
```

This example shows the output on iLO 5 with an array of iLO connection objects passed as pipeline input.

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

### HPE.iLO.Response.Redfish.ChassisInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

