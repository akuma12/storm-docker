FROM akuma12/storm:latest
MAINTAINER akuma12
RUN /usr/bin/config-supervisord.sh pacemaker

EXPOSE 2181
CMD /usr/bin/start-supervisor.sh