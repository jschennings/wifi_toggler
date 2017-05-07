on idle
	try
		set thePing to do shell script "ping -c 2 -t 1 8.8.4.4"
	on error
		do shell script "networksetup -setairportpower en1 off; networksetup -setairportpower en1 on"
		do shell script "sleep 2; networksetup -setairportnetwork en1 NdongoFall1B 51059291"
	end try
	return 45 -- seconds
end idle