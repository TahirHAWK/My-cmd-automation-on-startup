@REM Copy the whole code and start cmd as "Run as administrator" then paste the whole code and then press enter to execute.
@REM OR, simply "Run as administrator" after right click




@REM Unnecessary services that causes performance reduction ends here.



@REM  Adobe Acrobat Update Services
sc config "AdobeARMservice" start= disabled
sc stop "AdobeARMservice"

@REM  Adobe flash player Update Services
sc config "AdobeFlashPlayerUpdateSvc" start= disabled
sc stop "AdobeFlashPlayerUpdateSvc"

@REM  AllJoyn Router Service
sc config "AJRouter" start= disabled
sc stop "AJRouter"

@REM Application Layer Gateway Service
sc config "ALG" start= disabled
sc stop "ALG"


@REM  BitLocker Drive Encryption Service
sc config "BDESVC" start= disabled
sc stop "BDESVC"

@REM  Certificate Propagation
sc config "CertPropSvc" start= disabled
sc stop "CertPropSvc"

@REM  Connected User Experiences and Telemetry Properties
sc config "DiagTrack" start= disabled
sc stop "DiagTrack"

@REM  Cryptographic Services
sc config "CryptSvc" start= disabled
sc stop "CryptSvc"


@REM  Downloaded Maps Manager
sc config "MapsBroker" start= disabled
sc stop "MapsBroker"

@REM  Diagnostic Tracking Service(Still Remaining to find)

@REM  Diagnostic Policy Service
sc config "DPS" start= disabled
sc stop "DPS"


@REM  Distributed Link Tracking Client
sc config "TrkWks" start= disabled
sc stop "TrkWks"

@REM  Fax
sc config "Fax" start= disabled
sc stop "Fax"

@REM  File History Service
sc config "fhsvc" start= disabled
sc stop "fhsvc"

@REM  Infrared monitor service(still remaining to find)

@REM  Internet Connection Sharing
sc config "SharedAccess" start= disabled
sc stop "SharedAccess"

@REM  Netlogon
sc config "Netlogon" start= disabled
sc stop "Netlogon"


@REM  Offline Files(still remaining to find)

@REM  Print Spooler
sc config "Spooler" start= disabled
sc stop "Spooler"


@REM  Parental Control
sc config "WpcMonSvc" start= disabled
sc stop "WpcMonSvc"

@REM  Retail Demo Service
sc config "RetailDemo" start= disabled
sc stop "RetailDemo"

@REM  Remote Registry
sc config "RemoteRegistry" start= disabled
sc stop "RemoteRegistry"

@REM  Secondary Logon
sc config "seclogon" start= disabled
sc stop "seclogon"

@REM  Smart Card, Smart Card Device Enumeration Service and Smart Card Removal Policy
sc config "SCardSvr" start= disabled
sc stop "SCardSvr"
sc config "ScDeviceEnum" start= disabled
sc stop "ScDeviceEnum"
sc config "SCPolicySvc" start= disabled
sc stop "SCPolicySvc"

@REM  TCP/IP NetBIOS Helper
sc config "lmhosts" start= disabled
sc stop "lmhosts"

@REM  Touch Keyboard and Handwriting Panel Service
sc config "TabletInputService" start= disabled
sc stop "TabletInputService"

@REM  Windows Biometric Service
sc config "WbioSrvc" start= disabled
sc stop "WbioSrvc"

@REM  Windows Error Reporting Service
sc config "WerSvc" start= disabled
sc stop "WerSvc"

@REM  Windows Image Acquisitiont
sc config "stisvc" start= disabled
sc stop "stisvc"

@REM  Windows Insider Service
sc config "wisvc" start= disabled
sc stop "wisvc"

@REM  Windows License Manager
sc config "LicenseManager" start= disabled
sc stop "LicenseManager"




@REM Unnecessary services that causes performance reduction ends here.



@REM Unnecessary services that causes data reduction starts here.




@REM  background intelligence transfer services.
sc config "BITS" start= disabled
sc stop "BITS"

@REM  windows update.
sc config "wuauserv" start= disabled
sc stop "wuauserv"

@REM  windows update medic service.
sc config "WaaSMedicSvc" start= disabled
sc stop "WaaSMedicSvc"

@REM  remote desktop service
sc config "TermService" start= disabled
sc stop "TermService"

@REM  google update service 
sc config "gupdate" start= disabled
sc stop "gupdate"
sc config "gupdatem" start= disabled
sc stop "gupdatem"
@REM  Microsoft edge service(still remaining to find)

@REM  cryptographic services
sc config "CryptSvc" start= disabled
sc stop "CryptSvc"
@REM  branchcache,