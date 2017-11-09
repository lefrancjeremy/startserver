#!/bin/bash

if [ $# -lt 1 ]; then 
	echo -e "\e[1;31m/!\ Missing parameter /!\ \e[0m\n"
	echo -e "\e[0;33mparameter list :\e[0m\n  > start \e[0;36mor\e[0m 1\n  > stop \e[0;36mor\e[0m 0\n  > restart \e[0;36mor\e[0m 2\n"

elif [ $# -gt 1 ]; then
	echo -e "\e[1;31m/!\ Too many parameters /!\ \e[0m"

else

	case $1 in
		"0" | "stop")
			/etc/init.d/apache2 stop
			/etc/init.d/mysql stop
			/etc/init.d/ssh stop
			;;
		"1" | "start")
			/etc/init.d/apache2 start
			/etc/init.d/mysql start
			/etc/init.d/ssh start
			;;
		"2" | "restart")
			/etc/init.d/apache2 restart
			/etc/init.d/mysql restart
			/etc/init.d/ssh restart
			;;
		*)
			echo -e "\e[1;31m/!\ Wrong parameter /!\ \e[0m"
			;;
	esac
fi
