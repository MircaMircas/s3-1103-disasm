@echo off
IF EXIST s31103built.bin move /Y s31103built.bin s31103built.prev.bin >NUL
tool\windows\asw -xx -q -A -L -U -E -i . main.asm
tool\windows\p2bin -p=FF -z=0,uncompressed,Size_of_driver_guess,after main.p s31103built.bin
del main.p
