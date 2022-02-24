#!/bin/bash

cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

echo "[ssh]
findtime = 3600
maxretry = 6
bantime = 86400" >> /etc/fail2ban/jail.local
