@echo off
echo 127.0.0.1 store.corp.adobe.com > %temp%\temphosts.txt
type C:\WINDOWS\system32\drivers\etc\hosts >> %temp%\temphosts.txt
copy /Y %temp%\temphosts.txt C:\WINDOWS\system32\drivers\etc\hosts
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v TabProcGrowth /t REG_DWORD /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BFCACHE" /v iexplore.exe /t REG_DWORD /d 0
