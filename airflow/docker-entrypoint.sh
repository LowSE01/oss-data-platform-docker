#!/bin/bash

IS_DATABASE_INITIALIZED="__for_docker__is_database_initialized"
if [ "$(airflow variables get ${IS_DATABASE_INITIALIZED})" != "true" ]; then
  airflow db init

  airflow users create \
            --role Admin \
            --username admin \
            --email admin \
            --firstname admin \
            --lastname admin \
            --password admin

  airflow variables import /opt/airflow/variables.json
  airflow connections add odp_java_ssh \
            --conn-type "ssh" \
            --conn-host "odp-java" \
            --conn-login "java" \
            --conn-password "java" \
            --conn-port 22

  airflow variables set ${IS_DATABASE_INITIALIZED} true
fi

airflow webserver --daemon &
while :
do
  airflow scheduler
done
