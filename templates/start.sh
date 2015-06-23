#!/bin/sh
set -e
chown -R hadoop:hadoop /var/hadoop
chown -R hadoop:hadoop /var/log/hdfs
exec sudo -E -u hadoop /hadoop/bin/hdfs datanode 1>>/var/log/hdfs/datanode.log 2>&1
