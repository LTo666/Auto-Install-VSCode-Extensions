@echo off
:: Set the list of VSCode extensions from txt file
:: If the extensions.txt file is not in the same directory, replace it with full path location
set extensionsFile=extensions.txt

echo Installing Process Start~
:: For loop to install extensions
for /f "usebackq delims=" %%i in ("%extensionsFile%") do (
    code --install-extension "%%i" --force
)

echo All extensions installed successfully!

pause
