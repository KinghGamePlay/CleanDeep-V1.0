@echo off
:: =============================================
:: OPTIMIZADOR TOTAL ULTIMATE - PROTODEUS PRO MAX
:: =============================================
:: Versión Mejorada y Combinada - Windows 10/11
:: =============================================

:: --- Configuración inicial ---
color 0B
title OPTIMIZADOR TOTAL ULTIMATE - PROTODEUS PRO MAX
mode con: cols=90 lines=40
setlocal enabledelayedexpansion

echo -------------------------------------------
echo    INICIANDO OPTIMIZACION ULTIMATE DEL SISTEMA
echo -------------------------------------------
echo.

:: --- Verificar permisos de Administrador ---
NET FILE >nul 2>&1 || (
    echo [ERROR] Este script requiere permisos de Administrador.
    echo Ejecutando como Administrador...
    timeout /t 2 >nul
    powershell -command "Start-Process -FilePath '%~0' -Verb RunAs" 
    exit /b
)

:: --- Comprobar Windows 10/11 ---
ver | find "10." >nul || ver | find "11." >nul || (
    echo [ERROR] Solo compatible con Windows 10/11.
    pause
    exit /b
)

:: =============================================
:: INICIO DEL MANTENIMIENTO ULTIMATE
:: =============================================

:: --- Crear punto de restauración ---
echo [1] Creando Punto de Restauración del Sistema...
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Optimizacion_Ultimate_PRO", 100, 7
echo.

:: ------------------------
:: LIMPIEZA PROFUNDA DEL SISTEMA
:: ------------------------
echo [2] Limpieza Avanzada de Archivos Temporales...
echo.
echo [+] Limpiando Temp, Prefetch, Logs...
del /s /f /q "%TEMP%\*.*" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
rd /s /q "%TEMP%" >nul 2>&1 & md "%TEMP%" >nul 2>&1
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
del /s /f /q "C:\Windows\Logs\*.*" >nul 2>&1
del /s /f /q "C:\Windows\Minidump\*.*" >nul 2>&1

echo [+] Limpiando papelera de reciclaje...
PowerShell -Command "Clear-RecycleBin -Force" >nul 2>&1
echo.

:: ------------------------
:: LIMPIEZA DE NAVEGADORES (MEJORADO)
:: ------------------------
echo [3] Limpieza Completa de Navegadores...
echo.
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im opera.exe >nul 2>&1
taskkill /f /im brave.exe >nul 2>&1

:: Función mejorada para limpieza de navegadores
for %%B in (Chrome Edge Firefox Opera Brave) do (
    call :clear_browser_cache_ultimate %%B
)
echo.

:: ------------------------
:: PLAN DE ENERGÍA ULTIMATE
:: ------------------------
echo [4] Configurando Plan de Energía ULTIMATE...
echo.
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul
powercfg -changename 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c "Ultimate Performance PRO" "" >nul
powercfg -h off >nul
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IDLEDISABLE 000 >nul
powercfg /setactive SCHEME_CURRENT >nul
echo.

:: ------------------------
:: OPTIMIZACIÓN VISUAL (MAX RENDIMIENTO)
:: ------------------------
echo [5] Desactivando TODOS los Efectos Visuales...
echo.
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012008012812000" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "2" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d "0" /f >nul
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters >nul
echo.

:: ------------------------
:: SERVICIOS Y TELETRÍA (PRIVACIDAD)
:: ------------------------
echo [6] Optimizando Servicios y Privacidad...
echo.
sc config "DiagTrack" start= disabled >nul 2>&1
sc stop "DiagTrack" >nul 2>&1
sc config "dmwappushservice" start= disabled >nul 2>&1
sc stop "dmwappushservice" >nul 2>&1
sc config "SysMain" start= disabled >nul 2>&1
sc stop "SysMain" >nul 2>&1
sc config "WSearch" start= disabled >nul 2>&1
sc stop "WSearch" >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >nul
echo.

:: ------------------------
:: OPTIMIZACIÓN DE INICIO
:: ------------------------
echo [7] Limpiando Programas de Inicio...
echo.
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f >nul
echo.

:: ------------------------
:: OPTIMIZACIÓN DE RED ULTRA
:: ------------------------
echo [8] Optimizando Red para Máximo Rendimiento...
echo.
netsh interface tcp set global autotuninglevel=highlyrestricted >nul
netsh interface tcp set global rss=enabled >nul
netsh interface tcp set global chimney=enabled >nul
netsh int tcp set global ecncapability=disabled >nul
netsh int tcp set global timestamps=disabled >nul
ipconfig /flushdns >nul
echo [+] Limpiando caché DNS...
echo.

:: ------------------------
:: OPTIMIZACIONES DE SISTEMA
:: ------------------------
echo [9] Aplicando Ajustes Finales de Sistema...
echo.
fsutil behavior set memoryusage 2 >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f >nul
echo.

:: =============================================
:: FINALIZACIÓN
:: =============================================
echo -------------------------------------------
echo    OPTIMIZACIÓN ULTIMATE COMPLETADA!
echo -------------------------------------------
echo.
echo [+] Punto de restauración creado
echo [+] Sistema limpio y optimizado
echo [+] Privacidad mejorada
echo [+] Máximo rendimiento configurado
echo.
echo ES RECOMENDABLE REINICIAR EL SISTEMA.
echo -------------------------------------------
pause
shutdown /r /t 10 /c "Reinicio para aplicar optimizaciones Ultimate"
exit /b

:: =============================================
:: FUNCIONES INTERNAS MEJORADAS
:: =============================================

:clear_browser_cache_ultimate
setlocal
set BROWSER=%1

if "%BROWSER%"=="Chrome" (
    rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" >nul 2>&1
    rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache" >nul 2>&1
    rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Media Cache" >nul 2>&1
)

if "%BROWSER%"=="Edge" (
    rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" >nul 2>&1
    rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Code Cache" >nul 2>&1
)

if "%BROWSER%"=="Firefox" (
    for /d %%x in ("%APPDATA%\Mozilla\Firefox\Profiles\*") do (
        del /s /q "%%x\cache2\*.*" >nul 2>&1
        del /s /q "%%x\startupCache\*.*" >nul 2>&1
        del /s /q "%%x\thumbnails\*.*" >nul 2>&1
    )
)

if "%BROWSER%"=="Opera" (
    rd /s /q "%APPDATA%\Opera Software\Opera Stable\Cache" >nul 2>&1
    rd /s /q "%APPDATA%\Opera Software\Opera Stable\Code Cache" >nul 2>&1
)

if "%BROWSER%"=="Brave" (
    rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cache" >nul 2>&1
    rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Code Cache" >nul 2>&1
)

endlocal
goto :eof