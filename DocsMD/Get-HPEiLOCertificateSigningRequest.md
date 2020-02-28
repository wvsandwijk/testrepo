---
external help file: HPEiLOCmdlets.dll-Help.xml
Module Name: HPEiLOCmdlets
online version:
schema: 2.0.0
---

# Get-HPEiLOCertificateSigningRequest

## SYNOPSIS
Gets the Certificate Signing Request status.

## SYNTAX

```
Get-HPEiLOCertificateSigningRequest [-Connection] <Connection[]> [-OutputType <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-HPEiLOCertificateSigningRequest cmdlet gets a certificate from iLO.
Execute the Start-HPEiLOCertificateSigningRequest cmdlet before executing this cmdlet to start the Certificate Signing Request.
A gap of 10 minutes is recommended between the execution of the two cmdlets.

## EXAMPLES

### EXAMPLE 1
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40 -Username admin -Password admin123 

PS C:\> ,$connection | Get-HPEiLOCertificateSigningRequest

CertificateSigningRequest : 
                            -----BEGIN CERTIFICATE REQUEST-----
                            MIIDBjCCAe4CAQAwgYYxJTAjBgNVBAMMHGJsNDY1Y2dlbjgtMDEucG93ZXJzaHZw
                            bi5jb20xDDAKBgNVBAsMA0lTUzEgMB4GA1UECgwXSGV3bGV0dC1QYWNrYXJkIENv
                            bXBhbnkxEDAOBgNVBAcMB0hvdXN0b24xDjAMBgNVBAgMBVRleGFzMQswCQYDVQQG
                            EwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL+EL/Bw3t9OW9mb
                            iV2Dp3Yw0rjoUf1+8J5nc4vmrHVVG4DOxO2Xs3NaixLOdnDgmZLmMmqCi0wZcbKj
                            XV9gwkqPQ7aV6YoD0BI0psHcxTvI2GjgSiSEW6eugAuoB2dPU4jCHO9uZPgYf7ml
                            o6dpmqXSPJbxrlErJlzzADc0+h0uYrs3Kw7cy6I/u/KFFUe1YuqO7POJk9ygbPMu
                            L4CUPs0aAwxMojbov9oB/czl7qNIBIGGUlhvx0Cgb5y2osiisojNuOYPgMWOQm80
                            Grb93sO8Tfvo0n6VctONAqte4NNjErbISCDxc50GuU7+WxjGeo4ao7YyFtnACsxj
                            Gk+wmkECAwEAAaA6MDgGCSqGSIb3DQEJDjErMCkwJwYDVR0RBCAwHoIcYmw0NjVj
                            Z2VuOC0wMS5wb3dlcnNodnBuLmNvbTANBgkqhkiG9w0BAQsFAAOCAQEADgFhxB/8
                            hw0i1hjEoUJy0uWcVL4e+Ty9+YyQFJA8xMGNVdDCZJU5s5UnCpylH0R18T+/5jwT
                            jGW5kzpsOuWBqj3MlKTqWsaZUwPm4Lx2vGObRNZ9748MOGjami9W+7ZQaVxPpgdA
                            akzzJrFnDm2XsQTUfClPHoP2vXV4Ad6ajSZ40ZDf9N7nigTYOcLx0DKFecnwxpDh
                            fBPS+Gw4BquWTf2lU+KbxDFc5kLYUly2qTUGW7ortG9fyPTbcJyRYN4vP4OT9as6
                            127fzuMGC2xElh8KHcVe3z/054F9DnAmg72fcEc5Cjd76L9ZLAol9XvGtnp8CPQ/
                            UH3hXEqMDvcZpw==
                            -----END CERTIFICATE REQUEST-----
                            
IP                        : 10.20.30.40
Hostname                  : abcd.com
Status                    : OK
StatusInfo                :
```

This cmdlet shows the output on iLO 4 or iLO 5 with the connection object passed as pipeline input.

### EXAMPLE 2
```
PS C:\> $connection = Connect-HPEiLO 10.20.30.40,10.20.30.41 -Username admin -Password admin123 

PS C:\> Get-HPEiLOCertificateSigningRequest -Connection  $connection 

CertificateSigningRequest : 
                            -----BEGIN CERTIFICATE REQUEST-----
                            MIIDBjCCAe4CAQAwgYYxJTAjBgNVBAMMHGJsNDY1Y2dlbjgtMDEucG93ZXJzaHZw
                            bi5jb20xDDAKBgNVBAsMA0lTUzEgMB4GA1UECgwXSGV3bGV0dC1QYWNrYXJkIENv
                            bXBhbnkxEDAOBgNVBAcMB0hvdXN0b24xDjAMBgNVBAgMBVRleGFzMQswCQYDVQQG
                            EwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL+EL/Bw3t9OW9mb
                            iV2Dp3Yw0rjoUf1+8J5nc4vmrHVVG4DOxO2Xs3NaixLOdnDgmZLmMmqCi0wZcbKj
                            XV9gwkqPQ7aV6YoD0BI0psHcxTvI2GjgSiSEW6eugAuoB2dPU4jCHO9uZPgYf7ml
                            o6dpmqXSPJbxrlErJlzzADc0+h0uYrs3Kw7cy6I/u/KFFUe1YuqO7POJk9ygbPMu
                            L4CUPs0aAwxMojbov9oB/czl7qNIBIGGUlhvx0Cgb5y2osiisojNuOYPgMWOQm80
                            Grb93sO8Tfvo0n6VctONAqte4NNjErbISCDxc50GuU7+WxjGeo4ao7YyFtnACsxj
                            Gk+wmkECAwEAAaA6MDgGCSqGSIb3DQEJDjErMCkwJwYDVR0RBCAwHoIcYmw0NjVj
                            Z2VuOC0wMS5wb3dlcnNodnBuLmNvbTANBgkqhkiG9w0BAQsFAAOCAQEADgFhxB/8
                            hw0i1hjEoUJy0uWcVL4e+Ty9+YyQFJA8xMGNVdDCZJU5s5UnCpylH0R18T+/5jwT
                            jGW5kzpsOuWBqj3MlKTqWsaZUwPm4Lx2vGObRNZ9748MOGjami9W+7ZQaVxPpgdA
                            akzzJrFnDm2XsQTUfClPHoP2vXV4Ad6ajSZ40ZDf9N7nigTYOcLx0DKFecnwxpDh
                            fBPS+Gw4BquWTf2lU+KbxDFc5kLYUly2qTUGW7ortG9fyPTbcJyRYN4vP4OT9as6
                            127fzuMGC2xElh8KHcVe3z/054F9DnAmg72fcEc5Cjd76L9ZLAol9XvGtnp8CPQ/
                            UH3hXEqMDvcZpw==
                            -----END CERTIFICATE REQUEST-----
                            
IP                        : 10.20.30.40
Hostname                  : abcd.com
Status                    : OK
StatusInfo                : 

CertificateSigningRequest : 
                            -----BEGIN CERTIFICATE REQUEST-----
                            MIIDBjCCAe4CAQAwgYYxJTAjBgNVBAMMHGJsNDY1Y2dlbjgtMDEucG93ZXJzaHZw
                            bi5jb20xDDAKBgNVBAsMA0lTUzEgMB4GA1UECgwXSGV3bGV0dC1QYWNrYXJkIENv
                            bXBhbnkxEDAOBgNVBAcMB0hvdXN0b24xDjAMBgNVBAgMBVRleGFzMQswCQYDVQQG
                            EwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL+EL/Bw3t9OW9mb
                            iV2Dp3Yw0rjoUf1+8J5nc4vmrHVVG4DOxO2Xs3NaixLOdnDgmZLmMmqCi0wZcbKj
                            XV9gwkqPQ7aV6YoD0BI0psHcxTvI2GjgSiSEW6eugAuoB2dPU4jCHO9uZPgYf7ml
                            o6dpmqXSPJbxrlErJlzzADc0+h0uYrs3Kw7cy6I/u/KFFUe1YuqO7POJk9ygbPMu
                            L4CUPs0aAwxMojbov9oB/czl7qNIBIGGUlhvx0Cgb5y2osiisojNuOYPgMWOQm80
                            Grb93sO8Tfvo0n6VctONAqte4NNjErbISCDxc50GuU7+WxjGeo4ao7YyFtnACsxj
                            Gk+wmkECAwEAAaA6MDgGCSqGSIb3DQEJDjErMCkwJwYDVR0RBCAwHoIcYmw0NjVj
                            Z2VuOC0wMS5wb3dlcnNodnBuLmNvbTANBgkqhkiG9w0BAQsFAAOCAQEADgFhxB/8
                            hw0i1hjEoUJy0uWcVL4e+Ty9+YyQFJA8xMGNVdDCZJU5s5UnCpylH0R18T+/5jwT
                            jGW5kzpsOuWBqj3MlKTqWsaZUwPm4Lx2vGObRNZ9748MOGjami9W+7ZQaVxPpgdA
                            akzzJrFnDm2XsQTUfClPHoP2vXV4Ad6ajSZ40ZDf9N7nigTYOcLx0DKFecnwxpDh
                            fBPS+Gw4BquWTf2lU+KbxDFc5kLYUly2qTUGW7ortG9fyPTbcJyRYN4vP4OT9as6
                            127fzuMGC2xElh8KHcVe3z/054F9DnAmg72fcEc5Cjd76L9ZLAol9XvGtnp8CPQ/
                            UH3hXEqMDvcZpw==
                            -----END CERTIFICATE REQUEST-----
                            
IP                        : 10.20.30.41
Hostname                  : xyz.example.com
Status                    : OK
StatusInfo                :
```

This cmdlet shows the output on iLO 4 and iLO 5 with an array of iLO connection objects passed as named parameter.

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
System.String[]
System.String
## OUTPUTS

### HPE.iLO.Response.RIBCL.CertificateSigningRequestInfo[] or HPE.iLO.Response.Redfish.CertificateSigningRequestInfo[]
## NOTES

## RELATED LINKS

[http://www.hpe.com/servers/powershell]()

[Connect-HPEiLO]()

[Start-HPEiLOCertificateSigningRequest]()

