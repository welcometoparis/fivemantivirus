@echo off
set malwarefound=0
echo [MalScanner] Welcome. Press enter to begin scanning.
pause
echo [MalScanner] Malware A checked
findstr /s /m "random_char" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware B checked
findstr /s /m "Enchanced_Tabs" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware C checked
findstr /s /m "helpCode" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware D checked
findstr /s /m "assert(load(d))" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware E checked
findstr /s /m "zUlQELmVpVhoxJKnKBAZCPqptUIWWcpsYRVyJPlVIOAjDXMrQNVCCRtkFuAVknPcnpLkBJ" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
if %malwarefound%==1 (
echo [MalScanner] Malware found! Check the above logged bad resource files. They contain malicious code. Use source comparison to remove it.
) else (
echo [MalScanner] No malware found.
)

pause
