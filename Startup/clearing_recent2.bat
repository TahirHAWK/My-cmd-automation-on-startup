@echo off
del /s /q "C:\Users\USER PC\Recent\*.*"
for /d %%p in ("C:\Users\USER PC\Recent\*.*") do rmdir "%%p" /s /q
 
exit