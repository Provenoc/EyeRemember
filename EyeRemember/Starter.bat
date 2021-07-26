@echo off 

set localizationfolder=nil
set saved_datafolder=nil
set CurrentVersion=1
title Network T%CurrentVersion%
if not exist C:\Users\halou\Desktop\Network\localization\saved_data echo Error: Could not load data folder.
if not exist C:\Users\halou\Desktop\Network\localization\saved_data (md C:\Users\halou\Desktop\Network\localization\saved_data)
python C:\Users\halou\Desktop\Network\localization\compile.py
::if  not exist C:\Users\halou\Desktop\Network\localization\saved_data\environment.saved  echo.>"C:\Users\halou\Desktop\Network\localization\saved_data\enviroment.saved"
pause