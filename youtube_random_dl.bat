@echo off
rem https://superuser.com/questions/349474/how-do-you-make-a-letter-password-generator-in-batch
:top

rem 11 character string

setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set alfanum=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_

set string=
FOR /L %%b IN (0, 1, 10) DO (
SET /A rnd_num=!RANDOM! * 64 / 32768 + 1
for /F %%c in ('echo %%alfanum:~!rnd_num!^,1%%') do set string=!string!%%c
)

echo %string%
echo %string% >>log2.txt

youtube-dl -o "C:\Users\YOBLECK\youtube_random_dl\%string%.%%(mp4)s" https://www.youtube.com/watch?v=%string% >>log2.txt 2>&1
echo . >>log2.txt
endlocal
goto top