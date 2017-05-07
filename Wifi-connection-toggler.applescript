on idle
	set wifiName to "name"
	set wifiPassword to "password"
	set wifiModule to "en1"
	try
		set thePing to do shell script "ping -c 2 -t 1 8.8.4.4"
	on error
		-- Restarting airport unit
		do shell script "networksetup -setairportpower wifiModule off; networksetup -setairportpower wifiModule on"
		-- For faster reconnection to network
		do shell script "sleep 2; networksetup -setairportnetwork wifiModule wifiName wifiPassword"
	end try
	return 45 -- seconds
end idle