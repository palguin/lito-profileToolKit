#implement port flag


for ip in $(arp -a | egrep -o "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
	do 
		nc -G 3 -vz $ip 22
		
		statusHolder=$?
		statuscode= lastStatus $statusHolder
		if [ $statuscode -eq 0 ] 
			then
				#perform action
		fi

	done