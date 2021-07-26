@echo off 

title Network T%CurrentVersion%
python %CD%\localization\compile.py 


::if  not exist C:\Users\halou\Desktop\Network\localization\saved_data\environment.saved  echo.>"C:\Users\halou\Desktop\Network\localization\saved_data\enviroment.saved"
pause