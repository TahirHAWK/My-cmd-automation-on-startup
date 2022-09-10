set /a Index=1

setlocal enabledelayedexpansion
  
for /r %%i in (D:\my_urgent_worktools\My cmd automation on startup\wifi pass related\my phone\testing file renaming\*.*) do ( 
    rem if number is less than 10, append 9 to file name
    if !Index! lss 10 (
        rename "%%i" 0"!Index!.xml"
    ) else (
        rename "%%i" "!Index!.xml"
    )
    
    set /a Index+=1
)

pause