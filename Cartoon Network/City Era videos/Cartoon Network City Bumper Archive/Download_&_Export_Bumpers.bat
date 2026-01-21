@echo off
setlocal enabledelayedexpansion

echo Iniciando descarga de video...

:: Es mejor poner la URL entre comillas dobles
::yt-dlp.exe -f "bestvideo+bestaudio/best" --merge-output-format mp4 -o "Master_Video.%%(ext)s" "https://www.youtube.com/watch?v=Q6rBeODM2nc"
::yt-dlp.exe -f "bestvideo[height<=1080]+bestaudio/best" --merge-output-format mp4 -o ::"Master_Video.%%(ext)s" "https://www.youtube.com/watch?v=Q6rBeODM2nc"
yt-dlp.exe -f "bestvideo[height<=360]+bestaudio/best" --merge-output-format mp4 --recode-video mp4 --audio-quality 320k -o "Master_Video.%%(ext)s" "https://www.youtube.com/watch?v=Q6rBeODM2nc"

if %errorlevel% neq 0 (
    echo Ocurrio un error en la descarga.
) else (
    echo La descarga ha finalizado con éxito.
	"C:\Program Files\LosslessCut-win-x64\LosslessCut.exe" "Master_Video-proj.llc"
)

pause


REM Hi y'all I'm very interested in re creating the programming schedule of Cartoon Network City Era and Power House era so starting with city one recently I was trying to re collect / find all the bumpers neccesary and I discovered that there's supposedly 616 of those , recently I found a youtube video which has a lot of those bumpers in HD and I've just finished to make the clips / cuts by using a software called "Losslesscut" which uses ffmpeg the cool part is that whenever you make marks (ir order to cut) in the software's timeline a file it's created so we can share these files between us or even upload it to github cause it's just plain text

REM right now I made 287 bumpers out of that HD cartoon network bumpers video I told you , I was wondering if anyone here is interested in having those bumpers as well everything it's in english

REM Also wondering if I have permission to share my script here in order to contribute in some way to the project and to the enthusiast people

REM What it does :

REM 1.- Download the youtube video needed to make cuts with losslesscut
REM 2.- Open the video with the segments already embedded so the user only has to push the export button twice
REM 3.- You will have 287 Cartoon Network Bumpers ready to be use with just a few clicks

REM I think of this approach as user friendly and 1000 faster than trying to find one by one media also we could program the script to manage and categorize bumpers by it's own category folder in future ( e.g ed edd & edd CN City Era bumpers , courage the cowardly dog CN City Era bumpers , etc ).