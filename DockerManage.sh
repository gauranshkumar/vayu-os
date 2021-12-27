#!/bin/bash

MSG="\nUtility to Start/Stop/Restart Docker Service\nArguments Accepted :\n\t -s or --start : Start Docker\n\t -r or --restart : Restart Docker\n\t -st or --stop : Stop Docker\n\t -h or --help : Show this Help Menu\n"


while [ "$1" != "" ]; 
do
	case $1 in
		-s | --start) $(systemctl start docker.service)
		 echo "Docker Started"
		 exit;;
		-r | --restart) $(systemctl restart docker.service)
		echo "Docker Restarted"
		exit;;
		-st | --stop) $(systemctl stop docker.service)
		echo "Docker Stopped"
		exit;;
		-h | --help) echo -e $MSG 
			exit;;
	esac
done


