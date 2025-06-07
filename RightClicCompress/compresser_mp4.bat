@echo off
setlocal

set input="%~1"
set output="%~dpn1_compressed.mp4"

:: Compresse automatiquement la vidéo
"%~dp0HandBrakeCLI.exe" -i %input% -o %output% -e x264 -q 28 -B 96 --optimize

endlocal
