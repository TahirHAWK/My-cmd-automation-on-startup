@echo off
del /s /q "C:\Windows\Temp\*.*"
for /d %%p in ("C:\Windows\Temp\*.*") do rmdir "%%p" /s /q

exit