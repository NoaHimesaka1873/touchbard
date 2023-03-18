touchbard: touchbarctl
	echo "Nothing to compile!"

install: touchbard touchbarctl touchbard.example.conf
	cp touchbard /usr/bin
	cp touchbarctl /usr/bin
	cp touchbard.example.conf /etc/touchbard.conf
	cp touchbard.service /usr/lib/systemd/system
	chmod 644 /usr/lib/systemd/system/touchbard.service
	chmod 700 /usr/bin/touchbarctl 
	chmod 755 /usr/bin/touchbard

