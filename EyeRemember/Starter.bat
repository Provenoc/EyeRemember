@echo off 

set localizationfolder=nil
set saved_datafolder=nil
set CurrentVersion=1
title Network T%CurrentVersion%
python C:\Users\%USERNAME%\Desktop\EyeRemember\localization\compile.py
::if  not exist C:\Users\halou\Desktop\Network\localization\saved_data\environment.saved  echo.>"C:\Users\halou\Desktop\Network\localization\saved_data\enviroment.saved"
pause