@echo off
net.exe session 1>NUL 2>NUL || (start cmd /c "@echo off & title NetworkBlock & mode con cols=36 lines=2 & color 0C & echo You must run this as Adminstrator & pause>nul" & EXIT)
echo.
echo. >> %WINDIR%\System32\drivers\etc\hosts
echo [NetworkBlock] Blocking Malware Vendor A...
echo 127.0.0.1 cipher-panel.me >> %WINDIR%\System32\drivers\etc\hosts
echo [NetworkBlock] Blocked cipher-panel.me
echo.
echo [NetworkBlock] Blocking Malware Vendor B...
echo 127.0.0.1 ciphercheats.com >> %WINDIR%\System32\drivers\etc\hosts
echo [NetworkBlock] Blocked ciphercheats.com
echo.
echo [NetworkBlock] Blocking Malware Vendor C...
echo 127.0.0.1 keyx.club >> %WINDIR%\System32\drivers\etc\hosts
echo [NetworkBlock] Blocked keyx.club
echo.
echo [NetworkBlock] Blocking Malware Vendor D...
echo 127.0.0.1 dark-utilities.xyz >> %WINDIR%\System32\drivers\etc\hosts
echo [NetworkBlock] Blocked dark-utilities.xyz
echo.
pause 
