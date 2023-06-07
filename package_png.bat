@echo off
set target_file=skin_fluent.zip
if not exist package md package
if exist package\%target_file% del package\%target_file%
rem "C:\Program Files\7-Zip\7z.exe" a -tzip package\%target_file% Logo.png
rem "C:\Program Files\7-Zip\7z.exe" rn -tzip package\%target_file% Logo.png app_icon.png
cd png
"C:\Program Files\7-Zip\7z.exe" a -r -tzip ..\package\%target_file% *.* -xr!.git -xr!.bak
cd ..
pause