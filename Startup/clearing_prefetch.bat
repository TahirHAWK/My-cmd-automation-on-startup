@echo off
del /s /q "C:\Windows\Prefetch\*.*"
for /d %%p in ("C:\Windows\Prefetch\*.*") do rmdir "%%p" /s /q

exit