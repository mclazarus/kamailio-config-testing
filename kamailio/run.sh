#!/bin/bash

# Using syslog for now?
# ...don't later.
service rsyslog start

kama_shr=${KAMAILIO_SHR-64}
kama_pkg=${KAMAILIO_PKG-24}

# Test the syntax.
kamailio -c

# And get kama going.
kamailio -M ${kama_pkg} -m ${kama_shr} -DD -E -e
