@echo off
del /s /q "C:\Windows\SoftwareDistribution\Download\*.*"
for /d %%p in ("C:\Windows\SoftwareDistribution\Download\*.*") do rmdir "%%p" /s /q

pause