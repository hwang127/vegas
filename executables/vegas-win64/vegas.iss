; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3CACB6CD-EC4E-4E7C-9401-F7442D59EA88}
AppName=vegas
AppVersion=1.0
;AppVerName=vegas 1.0
AppPublisher=PCM Computational Applications
AppPublisherURL=https://pcm-ca.github.io/vegas/
AppSupportURL=https://pcm-ca.github.io/vegas/
AppUpdatesURL=https://pcm-ca.github.io/vegas/
DefaultDirName={pf}\vegas
DefaultGroupName=vegas
DisableProgramGroupPage=yes
OutputBaseFilename=install_vegas
Compression=lzma
SolidCompression=yes
ChangesEnvironment =yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\vegas.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\concrt140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\cyggcc_s-seh-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\cyggccpp-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\cygstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\cygwin1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\hdf5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\hdf5_cpp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\hdf5_hl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\hdf5_hl_cpp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\hdf5_tools.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\szip.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\PCM44\Desktop\vegas_windows\vegas-master\executables\vegas-win64\zlib.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\vegas"; Filename: "{app}\vegas.exe"
Name: "{commondesktop}\vegas"; Filename: "{app}\vegas.exe"; Tasks: desktopicon


[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}";Check: NeedsAddPath('{app}')




[Code]
function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  { look for the path with leading and trailing semicolon }
  { Pos() returns 0 if not found }
  Result := Pos(';' + Param + ';', ';' + OrigPath + ';') = 0;
end;

