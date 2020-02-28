---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOModuleVersion

## SYNOPSIS
Gets the module details of the installed HPEiLOCmdlets module.

## SYNTAX

```
Get-HPEiLOModuleVersion [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOModuleVersion cmdlet gets the module details of the installed HPEiLOCmdlets module.
The details include the name of the file, path, description, GUID, version, and supported UI cultures with respective versions.

## EXAMPLES

### EXAMPLE 1
```
C:\PS> Get-HPEiLOModuleVersion

Name                    : HPEiLOCmdlets
Path                    : C:\Program Files\Hewlett Packard 
                          Enterprise\PowerShell\Modules\HPEiLOCmdlets\HPEiLOCmdlets.dll
Description             : Scripting Tools for Windows PowerShell : iLO Cmdlets use the RIBCL and 
                          Redfish interface to communicate to iLO. These cmdlets can be used to 
                          configure and manage iLO on HPE ProLiant Gen8, Gen9 or Gen10 servers.
GUID                    : 4d93d4cf-72b1-4d1a-a247-bef198bebf96
CurrentUICultureName    : en-US
CurrentUICultureVersion : 
Version                 : 2.0.0.0
DotNetVersion           : 4.6.1
PSVersion               : @{PSVersion=5.0.10586.117; PSCompatibleVersions=System.Version[]; 
                          BuildVersion=10.0.10586.117; CLRVersion=4.0.30319.42000; 
                          WSManStackVersion=3.0; PSRemotingProtocolVersion=2.3; 
                          SerializationVersion=1.1.0.1}
OSVersion               : @{Caption=Microsoft Windows 8.1 Enterprise; CSDVersion=; Version=6.3.9600; 
                          BuildNumber=9600}
CCGVersion              : 1.2.0.6
AvailableUICulture      : {}
```

This example shows the output of the Get-HPEiLOModuleVersion cmdlet.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### ModuleInformation[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Update-HPEiLOModuleVersion]()

