@echo off

REM Record the starting time
echo Starting Time: %DATE% %TIME% >> execution_time.txt

REM Traverse through all the files and organize into folders according to date
FOR /R %%F IN (*) DO (
  FOR /F "tokens=2 delims=_" %%A IN ("%%~nF") DO (
    ECHO %%A
    if not exist "%%A" mkdir "%%A"
    move "%%F" "%%A"
    echo "moved"
  )
)

REM Record the end time
echo Ending Time: %DATE% %TIME% >> execution_time.txt
