@echo off
set /p siteAddress="Enter site:
set /p siteName="What would you call the site:
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %siteAddress%
echo > %siteName%.bat 
@echo "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %siteAddress%>> %siteName%.bat 