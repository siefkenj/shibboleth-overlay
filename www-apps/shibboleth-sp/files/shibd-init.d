#!/sbin/openrc-run

depend() {
        need net
        use apache
}

start() {
        ebegin "Starting Shibboleth Service Provider Daemon"
          mkdir -p ${SHIBD_PIDDIR}
          chown -R ${SHIBD_USER}:${SHIBD_GROUP} ${SHIBD_PIDDIR} ${SHIBD_CACHEDIR}
          start-stop-daemon --start --pidfile ${SHIBD_PIDDIR}/${SHIBD_PIDFILE} \
            --background --make-pidfile --exec /usr/sbin/shibd -- ${SHIBD_OPTS} -u ${SHIBD_USER} -g ${SHIBD_GROUP}
        eend $?

}

stop() {
        ebegin "Stopping Shibboleth Service Provider Daemon"
          start-stop-daemon --stop --pidfile ${SHIBD_PIDDIR}/${SHIBD_PIDFILE} --exec \
            /usr/sbin/shibd
        eend $?
}
