& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P} 
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P} 
choco install directx -y -s
& "D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\installer.bat" -Wait /Silent

cd D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper

7z x data.7z -y
7z x ninjaripper.zip -y

Remove-Item 'C:\ProgramData\BlueStacks_nxt\Engine' -force -recurse
Remove-Item 'C:\ProgramData\BlueStacks_nxt\bluestacks.conf' -force -recurse
rm 'C:\Users\public\Desktop\bluestacks 5.lnk' -force -recurse
rm 'C:\Users\public\Desktop\BlueStacks Multi-Instance Manager.lnk' -force -recurse 

Move-Item -Path 'D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\Engine' -Destination 'C:\ProgramData\Bluestacks_nxt'
Move-Item -Path 'D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\bluestacks.conf' -Destination 'C:\ProgramData\BlueStacks_nxt'

Move-Item -Path 'D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\Free Fire.lnk' -Destination 'C:\Users\runneradmin\desktop\Free Fire.lnk'
Move-Item -Path 'D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\NinjaRipper.lnk' -Destination 'C:\Users\runneradmin\desktop\NinjaRipper.lnk'
Move-Item -Path 'D:\a\GWKANG-S_CONSOLE\GWKANG-S_CONSOLE\GWKANG-CGI-TOOLS-main\FF_Ripper\Noesis.lnk' -Destination 'C:\Users\runneradmin\desktop\Noesis.lnk'

