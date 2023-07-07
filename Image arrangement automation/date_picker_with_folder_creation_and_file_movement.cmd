@echo off

REM Generate the output.txt file
(
  FOR /R %%F IN (*) DO (
    FOR /F "tokens=2 delims=_" %%A IN ("%%~nF") DO (
      ECHO %%A
    )
  )
) > output.txt

REM Generate the unique_output.txt file
type output.txt | sort /unique > unique_output.txt

REM Read the unique_output.txt file and create folders
@REM for /f %%i in (unique_output.txt) do mkdir "%%i"

REM Read a text file line by line
for /F "delims=" %%A in (unique_output.txt) do (
    REM for each entry, search the whole folder if it contains any file
    
    REM Scan the same folder and subfolders to compare filenames
    for /r %%F in (*) do (
        FOR /F "tokens=2 delims=_" %%D IN ("%%~nF") DO (
        @REM compare the %%D with the %%A
        if "%%D" == "%%A" (
            @REM move the file to a folder named moved, if it is not there, create one
            if not exist "moved" mkdir "moved"
            move "%%F" "moved\"
            echo "moved"
        ) else (
            echo "not equal yet"
        )
    )
      
                 )


)
