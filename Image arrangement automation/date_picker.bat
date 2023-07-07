@echo off

(
  FOR /R %%F IN (*) DO (
    FOR /F "tokens=2 delims=_" %%A IN ("%%~nF") DO (
      ECHO %%A
    )
  )
) > output.txt

type output.txt | sort /unique > unique_output.txt
