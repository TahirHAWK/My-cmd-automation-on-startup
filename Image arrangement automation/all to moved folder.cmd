@echo off

REM Record the starting time
echo Starting Time: %DATE% %TIME% >> StartingTime.txt


REM Traverse through all the files and organize into folders according to date
FOR /R %%F IN (*) DO (
  FOR /F "tokens=2 delims=_" %%A IN ("%%~nF") DO (
    ECHO %%A
    if not exist "moved" mkdir "moved"
    move "%%F" "moved"
    echo "moved"
  )
)

REM Record the end time
echo Ending Time: %DATE% %TIME% >>  EndingTime.txt

