#!/bin/sh
touch done
while true
do
	./recv.sh > tweets
	while read -r line
	do
		if grep -Fxq "$line" done
		then
			sleep 30
		else
			echo "                " > spaces
			echo "$line" | cut -d " " -f 1 | sed s/"<"// | sed s/">"// > user
			cat user spaces > userspaces
			read -r -n 16 username < userspaces
			echo "$username" | cut -c1-8 > $1
			sleep 4
			echo "$username" | cut -c9-16 > $1
			sleep 4
			echo "$line" | cut -d " " -f 2 > $1
			echo "$line" >> done
			sleep 10
			read -r -n 24 reply < $1
			./send.sh "$reply"
			sleep 45
		fi
	done < tweets
	sleep 30
done
