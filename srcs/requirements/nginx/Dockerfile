FROM debian:buster
RUN apt update -y && \
    apt upgrade -y && \
    apt-get -y install wget nginx openssl
RUN mkdir -p /etc/nginx/ssl

#     rm -rf /var/lib/apt/lists/*
# RUN mkdir -p /data/www
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
# FROM nginx
# COPY html/index.html /usr/share/nginx/html/
