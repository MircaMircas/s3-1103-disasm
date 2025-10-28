#!/bin/bash
if test -f s31103built.bin; then
	mv -f s31103built.bin s31103built.prev.bin
fi
./tool/linux/asl -xx -q -A -L -U -E -i . main.asm
./tool/linux/p2bin -p=FF -z=0,uncompressed,Size_of_driver_guess,after main.p s31103built.bin
rm -f main.p
