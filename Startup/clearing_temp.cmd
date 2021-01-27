@echo off
del /s /q "C:\Users\TAHIRA~1\AppData\Local\Temp\*.*"
for /d %%p in ("C:\Users\TAHIRA~1\AppData\Local\Temp\*.*") do rmdir "%%p" /s /q

exit

