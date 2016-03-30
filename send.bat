c:\windows\system32\mode.com %1 BAUD=9600 PARITY=n DATA=8
echo %2 | sed s/"// > temp.txt
set /p HUR=<temp.txt
echo %HUR% > %1