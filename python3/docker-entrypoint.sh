#!/bin/bash

# sshd起動
/usr/sbin/sshd

# dbt docs
cd /var/apps/dbt
dbt docs generate
dbt docs serve
