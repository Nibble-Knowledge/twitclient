#!/bin/sh

if [ "$#" -ne 1 ]
then
	echo "Usage: $0 status"
	exit
fi

perl oysttyer.pl -keyf=./.oysttyerkey -status="$1" -hold -silent