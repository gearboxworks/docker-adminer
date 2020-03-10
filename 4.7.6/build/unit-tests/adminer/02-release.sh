#!/bin/bash
# Created on 2020-03-11T07:32:42+1100, using template:02-release.sh.tmpl and json:gearbox.json

p_info "adminer-4.7.6" "Release test started."

if id -u gearbox
then
	c_ok "Gearbox user found."
else
	c_err "Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox group found."
else
	c_err "Gearbox group NOT found."
fi

p_info "adminer-4.7.6" "Release test finished."
