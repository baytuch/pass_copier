
[Setup]
AppId={{E12DB0E6-6F53-47DD-B13F-A8BC818824D1}
AppName=PassCopier
AppVersion=1.0
UninstallDisplayName=PassCopier
VersionInfoVersion=1.0.0.0
VersionInfoCopyright=Alexander Gladun
AppPublisher=Alexander Gladun
AppPublisherURL=http://www.it-hobby.km.ua/
AppSupportURL=http://www.it-hobby.km.ua/
AppUpdatesURL=http://www.it-hobby.km.ua/
DefaultDirName={pf}\PassCopier
DisableDirPage=no
AlwaysShowComponentsList=no
DisableProgramGroupPage=yes
;LicenseFile=License.txt
OutputBaseFilename=passcopier-setup
;Compression=lzma
Compression=zip
SolidCompression=yes
UninstallDisplayIcon={app}\passcopier.exe
SetupIconFile=key.ico
ChangesAssociations=yes
ArchitecturesAllowed=x86 x64

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "passcopier.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "libs/*"; DestDir: "{app}"
Source: "libs/platforms/qwindows.dll*"; DestDir: "{app}/platforms/"

[Registry]
Root: HKCR; Subkey: ".wd"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: ".wd"; ValueType: string; ValueData: "PASSWD.TEXT"
Root: HKCR; Subkey: ".wd"; ValueName: "Content Type"; ValueType: string; ValueData: "text/plain"
Root: HKCR; Subkey: "PASSWD.TEXT"; Flags: uninsdeletekey
Root: HKCR; Subkey: "PASSWD.TEXT"; ValueType: string; ValueData: "Password text document"
Root: HKCR; Subkey: "PASSWD.TEXT\DefaultIcon"; ValueType: expandsz; ValueData: "{app}\passcopier.exe"; Flags: createvalueifdoesntexist
Root: HKCR; Subkey: "PASSWD.TEXT\shell\open\command"; ValueType: expandsz; ValueData: "{app}\passcopier.exe %1"; Flags: createvalueifdoesntexist

