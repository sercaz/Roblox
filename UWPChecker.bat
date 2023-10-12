@echo off
setlocal enabledelayedexpansion

set "targetFolder=ROBLOXCORPORATION.ROBLOX"

for /d %%F in ("C:\Program Files\WindowsApps\%targetFolder%*") do (
    for /f "tokens=2 delims=_" %%V in ("%%~nxF") do (
        echo [+] UWP Version: %%V
        goto :end
    )
)

echo %targetFolder% not found.
goto :end

:end
endlocal
