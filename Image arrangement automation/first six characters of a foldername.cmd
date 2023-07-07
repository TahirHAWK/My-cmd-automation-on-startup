@echo off


for /d %%a in (*) do (
  set "folderName=%%~nxa"
  setlocal enabledelayedexpansion
  set "firstSixChars=!folderName:~0,6!"
  if not exist "!firstSixChars!" mkdir "!firstSixChars!"
  move /y "%%a" "!firstSixChars!\"
  endlocal
)

@REM make sure the month folder with the first six characters are not available, if it is available beforehand, it wont work, which i have to fix

pause