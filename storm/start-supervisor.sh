sed -i -e "s/%pacemaker%/$PM_PORT_2181_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$NIMBUS_PORT_6627_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml

echo "\nstorm.local.hostname: `hostname -i`" >> $STORM_HOME/conf/storm.yaml

/usr/sbin/sshd && supervisord
