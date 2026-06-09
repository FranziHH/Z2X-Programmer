@echo off
chcp 65001 > nul
setlocal

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
  /p:AndroidSigningStorePass="%KEYSTORE_PASS%"

if %errorlevel% equ 0 (
    echo.
    echo [ERFOLG] Build erfolgreich abgeschlossen!
    echo Die APK liegt unter: Z2X-Programmer\bin\Release\net10.0-android36.0\
) else (
    echo.
    echo [FEHLER] Der Build ist fehlgeschlagen.
)

pause
endlocal