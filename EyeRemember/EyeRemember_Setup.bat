@echo off
set update = ">"
title EyeRemember Setup
SETLOCAL EnableDelayedExpansion

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
echo Before EyeRemember can run fully, packages would need to be installed.
call :ColorText 0 "Installing Packages"
echo -
echo Installing UI Renderer
pip install pyqt5 pyqt5-tools




::if exist %CD%\localization\compile.py python %CD%\localization\compile.py 


goto :Beginoffile

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

:Beginoffile
echo run



::if  not exist C:\Users\halou\Desktop\Network\localization\saved_data\environment.saved  echo.>"C:\Users\halou\Desktop\Network\localization\saved_data\enviroment.saved"
pause