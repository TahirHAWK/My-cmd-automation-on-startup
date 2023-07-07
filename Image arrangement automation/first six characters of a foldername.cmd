@echo off
setlocal enabledelayedexpansion

(
for /d %%a in (*) do (
  set folderName=%%~na
  set firstSixChars=!folderName:~0,6!
  echo !firstSixChars!
      if not exist !firstSixChars! mkdir !firstSixChars!
    move "%%a" !firstSixChars!
)
) > folder.txt


pause