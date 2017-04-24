@echo off
set /p SpeechName="What should Cortana call this? (Put an easily pronouncable name): "
set /p directoryName="Enter path to exe: "
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\%SpeechName%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%directoryName%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
set /p id="What should Cortana call this? : "

cscript CreateShortcut.vbs
del CreateShortcut.vbs