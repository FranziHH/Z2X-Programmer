@echo off
chcp 65001 > nul
setlocal

set mypath=%~dp0
set releases=%mypath%\Releases

if not exist "%releases%" mkdir "%releases%"

:: ==========================================
:: .ENV LADEN
:: ==========================================
if not exist "%mypath%.env" (
    echo FEHLER: .env Datei fehlt!
    pause
    exit /b 1
)

for /f "usebackq tokens=1,2 delims==" %%a in ("%mypath%.env") do (
    if "%%a"=="KEYSTORE_PASS" set "KEYSTORE_PASS=%%b"
)

:: ==========================================
:: BUILD AUSFÜHREN
:: ==========================================
echo Starte Android Release Build...

dotnet publish Z2X-Programmer/Z2X-Programmer.csproj ^
  -c Release ^
  -f net10.0-android36.0 ^
  /p:AndroidSigningKeyStore=myapp.keystore ^
  /p:AndroidSigningKeyAlias=Z2X-Programmer ^
  /p:AndroidSigningKeyPass="%KEYSTORE_PASS%" ^
  /p:AndroidSigningStorePass="%KEYSTORE_PASS%" ^
  /p:AndroidSdkBuildToolsVersion="36.0.0" ^
  /p:SupportedOSPlatformVersion=29.0
  
if %errorlevel% equ 0 (
    echo.
    echo [ERFOLG] Build erfolgreich abgeschlossen!
    echo Erzeuge Release ...
	echo.

	if exist "%releases%\com.peterk78.z2xprogrammer-Signed.apk" del /f /q "%releases%\com.peterk78.z2xprogrammer-Signed.apk"
	copy "%mypath%\Z2X-Programmer\bin\Release\net10.0-android36.0\com.peterk78.z2xprogrammer-Signed.apk" "%releases%\com.peterk78.z2xprogrammer-Signed.apk" >nul

	echo.
	echo.

	echo Die APK wurde unter "%releases%\com.peterk78.z2xprogrammer-Signed.apk" abgelegt.
	
) else (
    echo.
    echo [FEHLER] Der Build ist fehlgeschlagen.
)

echo.
echo.

pause
endlocal