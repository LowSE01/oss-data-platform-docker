#!/bin/bash

# sshd起動
/usr/sbin/sshd

# dbt docs
cd /var/apps/dbt
dbt docs generate --profiles-dir ./profiles
dbt docs serve    --profiles-dir ./profiles
