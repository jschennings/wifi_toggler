on idle
	set wifiName to "name"
	set wifiPassword to "password"
	try
		set thePing to do shell script "ping -c 2 -t 1 8.8.4.4"
	on error -- en1 is the name of airport controler name, different for differet computer
		-- Restarting airport unit
		do shell script "networksetup -setairportpower en1 off; networksetup -setairportpower en1 on"
		-- For faster reconnection to network
		do shell script "sleep 2; networksetup -setairportnetwork en1 wifiName wifiPassword"
	end try
	return 45 -- seconds
end idle