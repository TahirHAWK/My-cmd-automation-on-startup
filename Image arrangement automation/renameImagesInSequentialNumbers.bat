@echo off
setlocal enabledelayedexpansion

REM Change the directory path to where your files are located
set folderPath=C:\path\to\your\folder

REM Change the file extension if necessary (e.g., .jpg)
set fileExtension=jpg

REM Counter starts from 1
set /a count=1

REM Go to the folder
cd /d "E:\temp_data\Downloads"

REM Loop through all the files with the specified extension
for %%f in (*.%fileExtension%) do (
   REM Rename the file to a sequential number
   ren "%%f" "!count!.%fileExtension%"
   set /a count+=1
)

echo Renaming complete.
pause
{\rtf1}