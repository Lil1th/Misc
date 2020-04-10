@echo off
rem The tendrils of my hair illuminate beneath the amber glow.
rem Bathing.
rem It must be this one.
rem The last remaining streetlight to have withstood the test of time.
rem The last yet to be replaced by the sickening blue-green of the future.
rem I bathe. Calm; breathing air of the present but living in the past.
rem The light flickers.
rem I flicker back. 
title Noctis
if exist "ControlPanel.{NOCTIS}" goto lumos
if not exist "Noctis" goto newuser
if exist "Noctis" goto nox
:newuser
cls
echo Hello, and welcome to Noctis! Please choose a password.
set/p "password= >> "
echo %password%>> NoctisData.dll
attrib +h +s "NoctisData.dll"
cls
md "ControlPanel.{NOCTIS}"
ren ControlPanel.{NOCTIS} "Noctis"
echo Setting up Noctis.
timeout 1 >nul
cls
echo Setting up Noctis..
timeout 1 >nul
cls
echo Setting up Noctis...
timeout 1 >nul
cls
if exist Noctis goto confirmNewUser
if not exist Noctis goto failNewUser
:confirmNewUser
echo Noctis setup successful!
echo Made with love by 나에리
timeout 3 >nul
goto end
:failNewUser
echo Noctis setup failed. Please send a bug report.
timeout 1 >nul
start github.com/PRlSMA
pause
goto end
:nox
ren Noctis "ControlPanel.{NOCTIS}"
attrib +h +s "ControlPanel.{NOCTIS}"
echo Files hidden successfully~
echo Made with love by 나에리
timeout 3 >nul
goto end
:lumos
cls
echo Please enter password.
set/p "enteredpass= >> "
>nul find "%enteredpass%" NoctisData.dll
if %errorlevel%==0 (
goto success
)
if %errorlevel%==1 (
goto fail
)
:success
attrib -h -s "ControlPanel.{NOCTIS}"
ren ControlPanel.{NOCTIS} "Noctis"
echo Password correct. Your files are now revealed.
timeout 3 >nul
goto end
:fail
echo Password incorrect. Please try again.
timeout 3 >nul
goto lumos
:end