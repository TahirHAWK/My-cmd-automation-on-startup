FOLDER=s:\aeTemp\Media Cache Files\Cache.MACC 
for /f "Tokens=* skip=100" %%f in ('dir "%FOLDER%\*.*" /o-d /b') do del /f /q "%FOLDER%\%%f"

