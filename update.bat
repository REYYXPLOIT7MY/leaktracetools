:: Copyright (c) 2023. Vili and contributors.
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
echo Make sure you run this in the root of the repository!
echo.
set /p "input=Do you want to continue and update RisszxxLeakTools? (y/n) "
if /i "%input%"=="y" (
    echo Updating...
    timeout /t 1 /nobreak > nul
    git fetch
    git pull
) else (
    echo Exiting...
    timeout /t 1 /nobreak > nul
)
exit