# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

SHIBD_PIDDIR="/var/run/shibboleth"
SHIBD_CACHEDIR="/var/cache/shibboleth"
SHIBD_PIDFILE="shibd.pid"
SHIBD_USER="shibd"
SHIBD_GROUP="shibd"

SHIBD_OPTS="-F -f -w 1 -c /etc/shibboleth/shibboleth2.xml"
