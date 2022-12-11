taskkill /F /IM teams.exe

timeout 5

del %appdata%\Microsoft\Teams /f /q
del %localappdata%\Microsoft\Teams /f /q

"C:\Program Files (x86)\Teams Installer\Teams.exe"

timeout 5

%localappdata%\Microsoft\Teams\Update.exe --processStart "Teams.exe"
