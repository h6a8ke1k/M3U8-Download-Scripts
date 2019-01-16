echo -n "Enter URL: "
read URL
echo -n "Enter file name: "
read filename
~/Desktop/ffmpeg-4.1-macos64-static/bin/ffmpeg -reconnect 1 -reconnect_at_eof 1 -reconnect_streamed 1 -reconnect_delay_max 5 -i $URL -acodec copy -vcodec copy -absf aac_adtstoasc ~/Desktop/$filename.mp4
read -p "Press any key to exit." var
