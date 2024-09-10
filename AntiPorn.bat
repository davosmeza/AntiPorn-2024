@echo off
:: This 'AntiPorn.bat' is created to do the process of blocking Porn pages automatically and thus avoid 
:: doing it manually, which I additionally explain in my video, in order to avoid knowing how to deactivate it 
:: due to temptation or addiction to Porn, etc.

::IMPORTANT!! The 'hosts' file such as 'AntiPorn.bat' must be on the 'desktop' and not inside a folder or other path. 
::The 'AntiPorn.bat' file must be run as administrator for the installation to work, this is because it must access a System32 folder.


:: Path of 'hosts' file on desktop
set source=%USERPROFILE%\Desktop

:: Destination path where you want to paste the 'hosts' file
set destination=C:\Windows\System32\drivers\etc

:: Copy and replace 'hosts' file in destination folder
echo Copiando archivo hosts...
copy /Y "%source%\hosts" "%destination%\hosts"

:: Check if the copy was successful
if %errorlevel%==0 (
    echo  'hosts' file replaced successfully, press any key to CLOSE.
) else (
    echo There was an error replacing the hosts file, !!Run AntiPorn.bat as Administrator!!
)

pause
