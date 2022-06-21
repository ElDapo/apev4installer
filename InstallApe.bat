@echo off

python --version | find /i "3.9" > NUL
if %ERRORLEVEL% == 0 (
	echo Python version 3.9 found.
) else (
	echo Python not found. Please follow the steps in the installer.
	echo MAKE SURE TO CHECK "ADD PYTHON TO PATH"
	echo Downloading Python 3.9.13
	powershell Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.13/python-3.9.13-amd64.exe" -OutFile "python_3_9_13.exe"
	echo Installing Python 3.9.13
	python_3_9_13.exe
)

echo Loading requirements...

echo Loading pip package: "websockets"
pip install websockets==8.1 > nul

echo Loading pip package: "tqdm"
pip install tqdm==4.31.1 > nul

echo Loading pip package: "pandas"
pip install pandas > nul

echo Loading pip package: "requests"
pip install requests==2.21.0 > nul

echo Loading pip package: "pyOpenSSL"
pip install pyOpenSSL==20.0.1 > nul

echo Loading pip package: "anonfiles"
pip install anonfiles > nul


if exist .\vapev4\ (
	echo Vape found.
) else (
	mkdir .\vapev4\
	anon d https://anonfiles.com/T69aSbq8y2/VapeV4_zip
	powershell Expand-Archive VapeV4.zip -DestinationPath .\vapev4\
)

cls


echo Please start Minecraft Forge 1.8.9 WITHOUT ANY MODS.
echo If Minecraft Forge is started, press any key to continue.
pause > NUL

echo Starting server.py to bypass verification.

start "" py server.py

echo Waiting for script to load...

timeout /t 5 /nobreak > NUL

echo Starting Vape v4.

start "" "./Vape_V4/Kangaroo Patcher.exe" Vape_V4.exe

echo You can now close this window.
pause	> NUL
