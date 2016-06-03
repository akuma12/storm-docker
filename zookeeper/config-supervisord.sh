echo [program:zookeeper] | tee -a /etc/supervisor/conf.d/zookeeper.conf
echo command=$ZK_HOME/bin/zkServer.sh start-foreground | tee -a /etc/supervisor/conf.d/zookeeper.conf
echo directory=$ZK_HOME | tee -a /etc/supervisor/conf.d/zookeeper.conf
echo autorestart=true | tee -a /etc/supervisor/conf.d/zookeeper.conf
echo user=root | tee -a /etc/supervisor/conf.d/zookeeper.conf
echo stopsignal=KILL | tee -a /etc/supervisor/conf.d/zookeeper.conf