FROM akuma12/base:latest

MAINTAINER akuma12

RUN wget -q -O - http://mirror.vorboss.net/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz | tar -xzf - -C /opt
RUN mv /opt/zookeeper-3.4.8/conf/zoo_sample.cfg /opt/zookeeper-3.4.8/conf/zoo.cfg

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV ZK_HOME /opt/zookeeper-3.4.8
RUN sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data

ADD config-supervisord.sh /usr/bin/config-supervisord.sh
ADD start-supervisor.sh /usr/bin/start-supervisor.sh
EXPOSE 2181 2888 3888

RUN echo [supervisord] | tee -a /etc/supervisor/supervisord.conf ; echo nodaemon=true | tee -a /etc/supervisor/supervisord.conf
RUN /usr/bin/config-supervisord.sh

WORKDIR /opt/zookeeper-3.4.8
VOLUME ["/opt/zookeeper-3.4.8/conf", "/opt/zookeeper-3.4.8/data"]

CMD /usr/sbin/sshd && start-supervisor.sh