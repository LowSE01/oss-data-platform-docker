FROM python:3.11.2

RUN apt-get update \
 && apt-get install -y \
      openssh-server \
 && apt-get clean

RUN pip install --upgrade pip \
 && pip install dbt-postgres

# AirflowからSSHOperatorで接続するためのユーザー作成
RUN useradd python3 -s /bin/bash \
 && echo "python3:python3" | chpasswd \
 && mkdir -p /home/python3 \
 && chown -R python3. /home/python3

# SSH通信設定
RUN ssh-keygen -A \
 && mkdir -p /run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
