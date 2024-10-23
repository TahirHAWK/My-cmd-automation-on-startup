@echo off
del /s /q "C:\Users\%USERNAME%\AppData\Roaming\Adobe\Common\Media Cache Files\*.*"
for /d %%p in ("C:\Users\%USERNAME%\AppData\Roaming\Adobe\Common\Media Cache Files\*.*") do rmdir "%%p" /s /q

pause
exit