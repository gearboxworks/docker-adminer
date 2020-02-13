#!/bin/sh

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."

chown -fhR adminer:adminer /var/www/

c_ok "Finished."
