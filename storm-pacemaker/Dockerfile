FROM akuma12/storm:latest
MAINTAINER akuma12
RUN /usr/bin/config-supervisord.sh pacemaker

EXPOSE 6699
ADD start-supervisor.sh /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh