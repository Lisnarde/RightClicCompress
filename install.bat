@echo off
setlocal

:: Vérifier si on est admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Redemarrage du script avec les droits administrateur...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

set "folder=%~dp0"

:: Remplacer \ par \\
setlocal enabledelayedexpansion
set "line=%folder%"
set "line=!line:\=\\!"
endlocal & set "folder=%line%"

:: Créer le fichier .reg
set "regfile=ajout_contextuel_handbrake.reg"
(
echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CLASSES_ROOT\SystemFileAssociations\.mp4\shell\Compresser avec RightClicCompress\command]
echo @="\"%folder%compresser_mp4.bat\" \"%%1\""
) > "%regfile%"

:: Importer la clé
regedit /s "%regfile%"

echo Clé de registre importée avec succès.
