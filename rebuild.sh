#!/bin/bash

docker build -t="akuma12/base" base
docker build -t="akuma12/storm" storm
docker build -t="akuma12/zookeeper" zookeeper
docker build -t="akuma12/storm-pacemaker" storm-pacemaker
docker build -t="akuma12/storm-nimbus" storm-nimbus
docker build -t="akuma12/storm-supervisor" storm-supervisor
docker build -t="akuma12/storm-ui" storm-ui
