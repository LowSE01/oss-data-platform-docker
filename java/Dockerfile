FROM openjdk:8-slim

RUN apt-get update \
 && apt-get install -y \
      curl \
      unzip \
      openssh-server \
 && apt-get clean

# Embulkインストール
ENV EMBULK_VERSION="0.9.23"
RUN curl --create-dirs -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-${EMBULK_VERSION}.jar"
RUN chmod +x /usr/local/bin/embulk

# AirflowからSSHOperatorで接続するためのユーザー作成
RUN useradd java -s /bin/bash \
 && echo "java:java" | chpasswd \
 && mkdir -p /home/java \
 && chown -R java. /home/java
COPY home/java/.bashrc /home/java/.bashrc

# SSH通信設定
RUN ssh-keygen -A \
 && mkdir -p /run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
