color 0A
goto start


:start
cls
echo -----------------------------------
echo ------------task-killer------------
echo -----------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo instrukcja - informacje uzyskania dok�adnej nazwy
echo autor - informacje o autorze
echo tasks - lista aktywnych zada�
echo [nazwa]- nazwa aplikacji 
set /p "tasktokill=>"
if %tasktokill%==instrukcja goto instrukcja
if %tasktokill%==autor goto autor
if %tasktokill%==tasks goto tasks
if not %tasktokill%==tasks goto chkext 
if not %tasktokill%==instrukcja goto chkext 
if not %tasktokill%==autor goto chkext

:chkext
cls 
echo wpisz rozszerzenie aplikacji %tasktokill% 
set /p "fileext=>"
cls
echo zamykanie %tasktokill%%fileext%
ping localhost -n 1 >nul
goto taskkill




:instrukcja
cls
echo WPISZ DOK�ADN� NAZW�
echo znajdziesz j� w mened�erze zada� w dziale szczeg��y 
pause >nul
echo wpisz BEZ rozszerzenia pliku 
pause >nul
goto start 


:taskkill
cls
taskkill /f /im "%tasktokill%.%fileext%" >nul
cls
echo aplikacja zosta�a zamkni�ta!
ping localhost -n 2 >nul
if %tasktokill%==explorer.exe goto startcmd
if not %tasktokill%==explorer.exe goto exit

:exit 
cls
exit

:startcmd
cls
start cmd.exe
exit 


:autor 
cls
echo.
echo Autorem aplikacji jest Wojciech Dudek
pause >nul
goto start

:tasks
cls
tasklist
pause >nul
cls
goto start 

