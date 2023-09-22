:: Copyright (c) 2023. Risszxx and contributors.
@echo off
cls
echo.
echo     //    / /        \\ / /      /__  ___/ //   ) ) //   ) ) / /        //   ) )
echo    //___ / //___/ /   \  /         / /    //   / / //   / / / /        ((
echo   / ___   /____  /    / /   ____  / /    //   / / //   / / / /           \\
echo  //    / /    / /    / /\\       / /    //   / / //   / / / /              ) )
echo //    / /    / /    / /  \\     / /    ((___/ / ((___/ / / /____/ / ((___ / /
echo.
echo ~~by Risszxx (https://myth.rip)
echo.
echo Installing dependencies in 3 seconds...
timeout /t 3 /nobreak > nul
python -m pip install -r requirements.txt
echo.
timeout /t 1 /nobreak > nul
echo.
echo Done..!
echo.
echo Building LeakTrace-Tools to a single executable in 3 seconds...
timeout /t 3 /nobreak > nul
python -m PyInstaller --onefile leaktrace.py
echo.
echo Done..!
echo Your LeakTrace-Tools executable is located in the 'dist' folder. You can now move it to your desired location.
echo.
echo OR you can start LeakTrace-Tools with python by typing 'python leaktraceR.py' in the terminal.

set /p "input=Start H4X-Tools now? (y/n) -> "
if /i "%input%"=="y" (
    echo Starting RiszxxLeakTools...
    timeout /t 1 /nobreak > nul
    start dist\h4xtools.exe
) else (
    echo Exiting...
    timeout /t 1 /nobreak > nul
)
exit
