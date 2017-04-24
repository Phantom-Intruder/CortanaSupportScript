@echo off
set /p siteAddress="Enter site:
set /p siteName="What would you call the site:
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %siteAddress%
echo > %siteName%.bat 
@echo "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %siteAddress%>> %siteName%.bat 
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\%siteName%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%siteName%.bat" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs