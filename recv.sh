#!/bin/sh

if [ "$#" -ne 0 ]
then
	echo "Usage: $0"
	exit
fi

perl oysttyer.pl -keyf=./.oysttyerkey -runcommand="/re" -hold