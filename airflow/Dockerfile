FROM apache/airflow:2.3.0

RUN pip install --upgrade pip
RUN pip install "apache-airflow[mysql, ssh]"

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY opt/airflow/variables.json /opt/airflow/variables.json

ENTRYPOINT [""]
CMD ["bash", "-c", "/docker-entrypoint.sh"]
