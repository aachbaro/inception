FROM debian:buster
RUN apt update -y && \
    apt upgrade -y && \
    apt-get install mariadb-server mariadb-client -y
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/script.sh /tmp/script.sh
ENTRYPOINT ["sh", "/tmp/script.sh"]