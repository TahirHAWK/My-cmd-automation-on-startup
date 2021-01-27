@echo off
del /s /q "C:\Users\Tahir Anam Tamin\AppData\Roaming\Adobe\Common\Media Cache Files\*.*"
for /d %%p in ("C:\Users\Tahir Anam Tamin\AppData\Roaming\Adobe\Common\Media Cache Files\*.*") do rmdir "%%p" /s /q

exit