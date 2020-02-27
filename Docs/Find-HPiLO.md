---
external help file: HPiLOCmdlets.psm1-help.xml
Module Name: HPiLOCmdlets
online version: http://www.hp.com/go/powershell
schema: 2.0.0
---

# Find-HPiLO

## SYNOPSIS
Find list of iLO in a specified subnet. 
(C) Copyright 2013, 2014 Hewlett-Packard Development Company, L.P.

## SYNTAX

```
Find-HPiLO [-Range] <Object> [[-Timeout] <Object>] [<CommonParameters>]
```

## DESCRIPTION
The Find-HPiLO cmdlet lists valid iLOs in the subnet provided. 
You must provide the subnet in which the iLOs have to be searched.
By default it searchs the default port in the iLOs.
You can provide a port number by appending a port number (":#") to the IP range.
The port number part is optional.

## EXAMPLES

### EXAMPLE 1
```
C:\PS> Find-HPiLO "6.4.217"
```

This will list the IP addresses of iLOs ranging from 6.4.217.0 to 6.4.217.255

### EXAMPLE 2
```
C:\PS> Find-HPiLO "2607:f0d0:1002:51::0-FFFF"
```

This will list the IP addresses of iLOs ranging from 2607:f0d0:1002:51::0 to 2607:f0d0:1002:51::FFFF

### EXAMPLE 3
```
C:\PS> Find-HPiLO "6.4.217" -Timeout 1000
```

This will list the IP addresses of iLOs ranging from 6.4.217.0 to 6.4.217.255 and the timeout for ping response will be 1000 milliseconds

### EXAMPLE 4
```
C:\PS> Find-HPiLO "6.4.217.93,103" -Timeout 100
```

This will list the IP addresses of iLOs 6.4.217.93 and 6.4.217.103 and the timeout for ping response will be 100 milliseconds

### EXAMPLE 5
```
C:\PS> Find-HPiLO "6.4" -Timeout 1000
```

This will list the IP addresses of iLOs 6.4.0.0 to 6.4.0.255, 6.4.1.0 to 6.4.1.255 till 6.4.255.0 to 6.4.255.255 and the timeout for ping response will be 1000 milliseconds

### EXAMPLE 6
```
C:\PS> Find-HPiLO "6.4:8080" -Timeout 1000
```

This will list the IP addresses of iLOs 6.4.0.0 to 6.4.0.255, 6.4.1.0 to 6.4.1.255 till 6.4.255.0 to 6.4.255.255 and port 8080 is used when searching all the IP addresses.
And the timeout for ping response will be 1000 milliseconds

### EXAMPLE 7
```
C:\PS> Find-HPiLO "[2607:f0d0:1002:51::4]:8080" -Timeout 1000
```

This will list the IP addresses of iLOs 2607:f0d0:1002:51::4 and port 8080 is used.
And the timeout for ping response will be 1000 milliseconds

## PARAMETERS

### -Range
Specifies the lower parts of the IP addresses which is the subnet in which the iLOs are being searched.
For IP address format 'a.b.c.d', where a, b, c, d represent an integer from 0 to 255, the Range parameter can have values such as: 
a - eg: 10 - for all IP addresses in 10.0.0.0 to 10.255.255.255
a.b - eg: 10.44 - for all IP addresses in 10.44.0.0 to 10.44.255.255
a.b.c - eg: 10.44.111 - for all IP addresses in 10.44.111.0 to 10.44.111.255
a.b.c.d - eg: 10.44.111.222 - for IP address 10.44.111.222
Each division of the IP address, can specify a range using a hyphen.
eg: "10.44.111.10-12" returns IP addresses 10.44.111.10, 10.44.111.11, 10.44.111.12
Each division of the IP address, can specify a set using a comma.
eg: "10.44.111.10,12" returns IP addresses 10.44.111.10, 10.44.111.12

```yaml
Type: Object
Parameter Sets: (All)
Aliases: IP

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Timeout period for ping request.
Timeout period can be specified by the user where there can be a possible lag due to geographical distance between client and server.
Default value is 300 which is 300 milliseconds

If the default timeout is not long enough, no iLOs will be found and no errors will be displayed.
(See notes)

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 300
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### 
String or a list of String specifying the lower parts of the IP addresses which is the subnet in which the iLOs are being searched.
For IP address format 'a.b.c.d', where a, b, c, d represent an integer from 0 to 255, the Range parameter can have values such as: 
a - eg: 10 - for all IP addresses in 10.0.0.0 to 10.255.255.255
a.b - eg: 10.44 - for all IP addresses in 10.44.0.0 to 10.44.255.255
a.b.c - eg: 10.44.111 - for all IP addresses in 10.44.111.0 to 10.44.111.255
a.b.c.d - eg: 10.44.111.222 - for IP address 10.44.111.222
Each division of the IP address, can specify a range using a hyphen.
eg: "10.44.111.10-12" returns IP addresses 10.44.111.10, 10.44.111.11, 10.44.111.12
Each division of the IP address, can specify a set using a comma.
eg: "10.44.111.10,12" returns IP addresses 10.44.111.10, 10.44.111.12
Note: Both IPv4 and IPv6 ranges are supported.
Note: Port number is optional.
With port number 8888 the input are 10:8888, 10.44:8888, 10.44.111:8888, 10.44.111.222:8888; Without port number, default port in iLO is used.

## OUTPUTS

### 
Use Get-Member to get details of fields in returned objects.

## NOTES
Some forms of command line parameters must be enclosed in quotes for correct interpretation by the system.
For example a string parameter of 1234 is interpreted as a number instead of a string without quotes.
An IP address set of 10.10.10.11,33 would also be misinterpreted. 
Use either "1234" or "10.10.10.11,33" to get the expected results.

If the Find-HPiLO command will be operating from around the world, timeout of 300ms will not be enough

## RELATED LINKS

[http://www.hp.com/go/powershell](http://www.hp.com/go/powershell)

