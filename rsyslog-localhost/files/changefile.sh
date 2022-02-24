#!/bin/bash

sed -i 's/#module(load="imudp")/module(load="imudp")/g' /etc/rsyslog.conf
sed -i 's/#input(type="imudp" port="514")/input(type="imudp" port="514")/g' /etc/rsyslog.conf
sed -i 's/#module(load="imtcp")/module(load="imtcp")/g' /etc/rsyslog.conf
sed -i 's/#input(type="imtcp" port="514")/input(type="imtcp" port="514")/g' /etc/rsyslog.conf

template='$template'

echo '$template RemoteLogs,"/var/log/rsyslog/%HOSTNAME%/%PROGRAMNAME%.log"
*.* ?RemoteLogs
& ~' >> /etc/rsyslog.conf
