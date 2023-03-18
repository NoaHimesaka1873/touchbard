touchbard: touchbarctl
	echo "Nothing to compile!"

install: touchbard touchbarctl touchbard.example.conf
	cp touchbard /usr/bin
	cp touchbarctl /usr/bin
	cp touchbard.example.conf /etc/touchbard.conf
	chmod 700 /usr/bin/touchbarctl 
	chmod 755 /usr/bin/touchbard

