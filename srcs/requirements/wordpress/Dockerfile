FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
	apt-get -y install wget

RUN apt-get install -y php7.3 \
		php-fpm \
		php-mysql \
		mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
WORKDIR /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chown -R www-data:www-data /var/www/wordpress

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["sh", "/usr/local/bin/script.sh"]





# FROM debian:buster
# RUN apt update -y && \
#     apt upgrade -y && \
# 	apt-get -y install wget
# RUN apt-get install -y php7.3\
# 		php-fpm\
# 		php-mysql\
# 		mariadb-client
# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
# RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
# RUN	chown -R root:root /var/www/wordpress
# COPY www.conf /var/www/wordpress
# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp
# COPY ./script.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/script.sh
# ENTRYPOINT ["sh", "/usr/local/bin/script.sh"]
# RUN /usr/sbin/php-fpm7.3 -F
