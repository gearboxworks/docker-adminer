#!/bin/bash
# Created on 2020-03-11T07:32:42+1100, using template:02-release.sh.tmpl and json:gearbox.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Gearbox[adminer-4.7.6]: Release test started."

if id -u gearbox
then
	c_ok "Gearbox[adminer-4.7.6]: Gearbox user found."
else
	c_err "Gearbox[adminer-4.7.6]: Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox[adminer-4.7.6]: Gearbox group found."
else
	c_err "Gearbox[adminer-4.7.6]: Gearbox group NOT found."
fi

c_ok "Gearbox[adminer-4.7.6]: Release test finished."

