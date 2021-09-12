@echo off
del /s /q "C:\Users\USERPC~1\AppData\Local\Temp\*.*"
for /d %%p in ("C:\Users\USERPC~1\AppData\Local\Temp\*.*") do rmdir "%%p" /s /q

exit

