@echo off
setlocal enabledelayedexpansion

REM Set the folder path where the images are located (e.g., where you will execute the script)
set "folderPath=E:\temp_data\wallpapers"

REM Create a temporary file to store the list of all .jpg files
dir /b "E:\temp_data\wallpapers\*.jpg" > images.txt

REM Count the number of .jpg files
set /a count=0
for /f "delims=" %%f in (images.txt) do (
   set /a count+=1
)

REM If no images are found, exit
if %count%==0 (
   echo No JPG images found in the folder!
   del images.txt
   exit /b
)

REM Generate a random number between 1 and the count of images
set /a "randomImage=%random% %% %count% + 1"

REM Select the random image based on the random number
set /a current=0
for /f "delims=" %%f in (images.txt) do (
   set /a current+=1
   if !current! equ %randomImage% set "selectedImage=%%f"
)

REM Delete the temporary file
del images.txt

REM Set the selected image as the desktop background
echo Selected image: %selectedImage%
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "E:\temp_data\wallpapers\%selectedImage%" /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

echo Wallpaper has been set to %selectedImage%.
pause
