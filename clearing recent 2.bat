@echo off
del /s /q "C:\Users\Tahir Anam Tamin\Recent\*.*"
for /d %%p in ("C:\Users\Tahir Anam Tamin\Recent\*.*") do rmdir "%%p" /s /q
 
exit