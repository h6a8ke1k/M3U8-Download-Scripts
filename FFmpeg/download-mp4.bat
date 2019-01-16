@echo off
set /p url=URL: 
set /p filename=File Name: 
.\ffmpeg-4.0.2-win64-static\bin\ffmpeg.exe -reconnect 1 -reconnect_at_eof 1 -reconnect_streamed 1 -reconnect_delay_max 5 -i %url% -acodec copy -vcodec copy -absf aac_adtstoasc %filename%.mp4
pause
