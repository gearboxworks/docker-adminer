#!/bin/bash
# Created on 2020-03-11T07:50:04+1100, using template:adminer.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /etc/gearbox/build/adminer.apks ]
then
	APKS="$(cat /etc/gearbox/build/adminer.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /etc/gearbox/build/adminer.env ]
then
	. /etc/gearbox/build/adminer.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

chown -fhR adminer:adminer /var/www/

c_ok "Finished."
