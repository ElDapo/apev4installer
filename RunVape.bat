@echo off

title ApeV4 installer by eldapo

set log=  [0m[[92m+[0m]
set err=  [0m[[91m-[0m]

echo.
echo [34m  .@@@@@@           ,@@@@@%% *@@@@@@@*       .@@@@@@@@@@@@@%%.   (@@@@@@@@@@@@@@( 
echo [34m    @@@@@@         ,@@@@@# /@@@@@@@@@/      .@@@@@@@@@@@@@@@@/ (@@@@@@@@@@@@@@( 
echo [94m     @@@@@@       *@@@@@# (@@@@@^&@@@@@/     .@@@@@      ,@@@@@.(@@@@^&           
echo [94m      @@@@@@     /@@@@@( (@@@@@* /@@@@@/    .@@@@@      #@@@@@.(@@@@@@@@@@@@@   
echo [36m       @@@@@@   (@@@@@/ #@@@@@* ((%%@@@@@(   .@@@@@ %%@@@@@@@@@. (@@@@@@@@@@@@@   
echo [36m        ^&@@@@@ (@@@@@* #@@@@@*,@@@@@@@@@@#  .@@@@@ (%%%%%%%%#/     (@@@@^&           
echo [96m         @@@@@@@@@@@/ %%@@@@@,       .@@@@@# .@@@@@             (@@@@^&.........  
echo [96m          ^&@@@@@@@@* %%@@@@@.         ,@@@@@%% @@@@@             (@@@@@@@@@@@@@@( 
echo.
echo                                Made by eldapo#0514
echo            If you need help or encounter an error, feel free to dm me!
echo.
echo.
echo.

:checkPython
for %%x in (
    "eldapo/python/_asyncio.pyd"
    "eldapo/python/_bz2.pyd"
    "eldapo/python/_ctypes.pyd"
    "eldapo/python/_decimal.pyd"
    "eldapo/python/_elementtree.pyd"
    "eldapo/python/_hashlib.pyd"
    "eldapo/python/_lzma.pyd"
    "eldapo/python/_msi.pyd"
    "eldapo/python/_multiprocessing.pyd"
    "eldapo/python/_overlapped.pyd"
    "eldapo/python/_queue.pyd"
    "eldapo/python/_socket.pyd"
    "eldapo/python/_sqlite3.pyd"
    "eldapo/python/_ssl.pyd"
    "eldapo/python/_uuid.pyd"
    "eldapo/python/_zoneinfo.pyd"
    "eldapo/python/libcrypto-1_1.dll"
    "eldapo/python/libffi-7.dll"
    "eldapo/python/libssl-1_1.dll"
    "eldapo/python/LICENSE.txt"
    "eldapo/python/pyexpat.pyd"
    "eldapo/python/python.cat"
    "eldapo/python/python.exe"
    "eldapo/python/python3.dll"
    "eldapo/python/python39.dll"
    "eldapo/python/python39.zip"
    "eldapo/python/pythonw.exe"
    "eldapo/python/select.pyd"
    "eldapo/python/sqlite3.dll"
    "eldapo/python/unicodedata.pyd"
    "eldapo/python/vcruntime140.dll"
    "eldapo/python/vcruntime140_1.dll"
    "eldapo/python/winsound.pyd"
    "eldapo/python/get-pip.py"
) do (
	if not exist %%x (
        echo %log% Downloading Python 3.9.13

        mkdir eldapo\python >NUL 2>NUL

        powershell Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.13/python-3.9.13-embed-amd64.zip" -OutFile "eldapo/python_3_9_13.zip" >NUL 2>NUL
        echo %log% Installing Python 3.9.13
        powershell Expand-Archive -Force "eldapo/python_3_9_13.zip" "eldapo/python" >NUL 2>NUL
        echo %log% Installing Python 3.9.13
        echo.

        echo %log% Downloading pip

        powershell Invoke-WebRequest -Uri "https://bootstrap.pypa.io/get-pip.py" -OutFile "eldapo/python/get-pip.py" >NUL 2>NUL
        del "eldapo\python\python39._pth" >NUL 2>NUL

        echo %log% Installing pip
        "eldapo/python/python.exe" "eldapo/python/get-pip.py" --no-warn-script-location >NUL 2>NUL
        echo %log% Pip sucessfully installed
        echo.
        goto checkPython
	)
)

set py="eldapo\python\python.exe"
echo %log% Python found!

for %%x in (
    "assets/blatant.png"
    "assets/check.png"
    "assets/circle.png"
    "assets/circle2.png"
    "assets/combat.png"
    "assets/copy.png"
    "assets/creeper.png"
    "assets/cross.png"
    "assets/delete.png"
    "assets/di_hit.png"
    "assets/di_pot.png"
    "assets/di_target.png"
    "assets/dots.png"
    "assets/download.png"
    "assets/duel info.png"
    "assets/ex.png"
    "assets/exo.png"
    "assets/export.png"
    "assets/favorite.png"
    "assets/fire.png"
    "assets/friends.png"
    "assets/gui.png"
    "assets/icon4.png"
    "assets/import.png"
    "assets/info.png"
    "assets/macros.png"
    "assets/magnify.png"
    "assets/other.png"
    "assets/peace.png"
    "assets/pin.png"
    "assets/profiles.png"
    "assets/radar.png"
    "assets/rearview.png"
    "assets/render.png"
    "assets/search.png"
    "assets/settings.png"
    "assets/sync.png"
    "assets/target info.png"
    "assets/text gui.png"
    "assets/toggleback.png"
    "assets/toggleback2.png"
    "assets/togglefront.png"
    "assets/upload.png"
    "assets/user.png"
    "assets/utility.png"
    "assets/v4.png"
    "assets/vapelogo.png"
    "assets/vapelogosmall.png"
    "assets/world.png"
    "dumper/dllmain.cpp"
    "dumper/mitm_server.py"
    "dumper/PacketHandler.h"
    "dumper/README.md"
    "mappings/1.7.10/fields.csv"
    "mappings/1.7.10/fields_cache.json"
    "mappings/1.7.10/joined.srg"
    "mappings/1.7.10/methods.csv"
    "mappings/1.7.10/methods_cache.json"
    "mappings/1.8.9/fields.csv"
    "mappings/1.8.9/fields_cache.json"
    "mappings/1.8.9/joined.srg"
    "mappings/1.8.9/methods.csv"
    "mappings/1.8.9/methods_cache.json"
    "mappings/1.12/fields.csv"
    "mappings/1.12/fields_cache.json"
    "mappings/1.12/joined.srg"
    "mappings/1.12/methods.csv"
    "mappings/1.12/methods_cache.json"
    "Vape_v4/Kangaroo Patcher.exe"
    "Vape_v4/Kangaroo.dll"
    "Vape_v4/Vape_V4.exe"
    "cert.pem"
    "Dump0"
    "Dump1"
    "Dump2"
    "key.pem"
    "README.md"
    "requirements install.bat"
    "requirements.txt"
    "server.py"
    "strings.txt"
) do (
	if not exist %%x (
        echo.
        echo %err% Files incomplete. Please redownload Vape.
        pause >NUL 2>NUL
        exit
	)
)
echo.

for %%x in (
    websockets
    tqdm
    pandas
    requests
    pyOpenSSL
) do (
    echo %log% Loading pip package "%%x"
    %py% -m pip install %%x >NUL 2>NUL
)
echo.


dir %appdata%\.minecraft\mods | findstr /C:"0 File(s)" >NUL 2>NUL
if %ERRORLEVEL% neq 0 (
    if not exist "eldapo\modsAccepted.txt" (
        echo %err% You have mods in your mod folder (%appdata%\.minecraft\mods)
        echo %err% You may need to remove them to start Vape.
        echo.
        echo %err% Press a key if you understood that.
        echo.
        pause >NUL 2>NUL
        echo If there are any mods in your mods folder, you can encounter problems whilst starting Vape. > "eldapo\modsAccepted.txt"
        echo readAndUnderstood = true > "eldapo\modsAccepted.txt"
    )
)

echo %log% Waiting for Minecraft.
:minecraftLoop
tasklist | findstr /C:"javaw.exe" >NUL 2>NUL
if %ERRORLEVEL% equ 0 (
    echo %log% Minecraft found.
) else (
    timeout /t 1 /nobreak >NUL 2>NUL
    goto minecraftLoop
)
echo.

echo %log% Starting server.py to bypass verification.
echo.
start "SERVER CONSOLE - eldapo" %py% server.py

echo %log% Waiting for script to load...
echo.
timeout /t 5 /nobreak >NUL 2>NUL

echo %log% Starting Vape v4.
echo.
start "VAPE CONSOLE - eldapo" "./Vape_V4/Kangaroo Patcher.exe" Vape_V4.exe

echo %log% You can now close this window.
pause >NUL 2>NUL
