@echo off
set /p IN=Enter input file name: 
set /p OUT=Enter output gif name: 
set /p START_TIME=Enter start time: 
set /p DURATION=Enter duration: 
set /p SCALE=Enter scale (your_input x auto): 
set /p FPS=Enter framerate (FPS): 

ffmpeg -y -ss %START_TIME% -t %DURATION% -i "%IN%" -vf fps=%FPS%,scale=%SCALE%:-1:flags=lanczos,palettegen TEMP_GIF_PALETTE.png
ffmpeg -y -ss %START_TIME% -t %DURATION% -i "%IN%" -i TEMP_GIF_PALETTE.png -filter_complex "fps=%FPS%,scale=%SCALE%:-1:flags=lanczos[x];[x][1:v]paletteuse" "%OUT%"
del "TEMP_GIF_PALETTE.png"

echo.
echo GIF Creation complete! Press any key to quit.
pause >NUL
