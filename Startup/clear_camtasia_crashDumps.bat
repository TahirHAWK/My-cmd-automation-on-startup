@echo off
del /s /q "C:\Users\Tahir Anam Tamin\AppData\Local\TechSmith\Camtasia Studio\CrashDumps\*.*"
for /d %%p in ("C:\Users\Tahir Anam Tamin\AppData\Local\TechSmith\Camtasia Studio\CrashDumps\*.*") do rmdir "%%p" /s /q

exit