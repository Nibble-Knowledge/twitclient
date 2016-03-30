#!/bin/sh
GOT=$(expect expect.x $1 | grep -v ^spawn | sed s/ZZ//)
echo $GOT
