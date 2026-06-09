@echo off
chcp 65001 > nul
setlocal

set mypath=%~dp0
set releases=%mypath%Releases
set ZIPNAME=%releases%\Z2X-Programmer-Windows-WIN32.zip
set builddir=%mypath%Z2X-Programmer\bin\x86\Release\net10.0-windows10.0.19041.0\win-x86

if not exist "%releases%" mkdir "%releases%"

echo Bereinige Zielordner...

if exist "%builddir%" (
    rmdir /s /q "%builddir%"
)

echo Zielordner bereinigt.

:: ==========================================
:: BUILD AUSFÜHREN
:: ==========================================
echo Starte Windows x86 (WIN32) Release Build...

dotnet build Z2X-Programmer/Z2X-Programmer.csproj ^
  -c Release ^
  -f net10.0-windows10.0.19041.0 ^
  /p:Platform=x86

if %errorlevel% equ 0 (
    echo.
    echo [ERFOLG] Build erfolgreich abgeschlossen!
	
    echo Erzeuge Release ...
	echo.

	if exist "%ZIPNAME%" del /f /q "%ZIPNAME%"
	"C:\Program Files\7-Zip\7z.exe" a -tzip "%ZIPNAME%" -w"%builddir%" "%builddir%\*"

	echo.
	echo.

	echo Das *.zip wurde unter "%ZIPNAME%" abgelegt.
	
) else (
    echo.
    echo [FEHLER] Der Windows-Build ist fehlgeschlagen.
)

echo.
echo.

pause
endlocal