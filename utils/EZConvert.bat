@ECHO OFF
SET /P INPUT=Put the file for input: 
SET /P OUTPUT=Put the file for output: 
SET /P FMT=Put the file format: 

ffmpeg -y -i "%INPUT%" -f %FMT% "%OUTPUT%"

ECHO Converted %INPUT% to %OUTPUT% (Format: %FMT%)! Press any key to quit.
PAUSE >NUL
