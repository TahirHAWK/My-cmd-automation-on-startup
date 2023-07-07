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

@REM REM Read the unique_output.txt file and create folders
@REM for /f %%i in (unique_output.txt) do mkdir "%%i"

@REM Now scan the unique_output.txt file again, and find folders from each entry, and for each folder name scan all the files within the folder and subfolders if the name of the folder contains in another file, if so, move that file inside that folder 