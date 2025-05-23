@echo off
echo Deploying static website...

:: Set the destination folder
set DEST=C:\inetpub\wwwroot\simple-website

:: Remove old deployment
if exist "%DEST%" (
    rmdir /S /Q "%DEST%"
)
:: Create new destination folder
mkdir "%DEST%"

:: Copy all files from current directory to destination
xcopy "%cd%\*" "%DEST%\" /E /H /Y

echo Deployment complete.
pause
