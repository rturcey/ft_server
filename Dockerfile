FROM debian:buster

MAINTAINER rturcey <rturcey@student.42.fr>

# INSTALLATIONS
RUN		apt-get update && apt-get upgrade -y
RUN		apt-get install -y mariadb-server openssl wget
RUN		apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli \
		php7.3-common php7.3-json php7.3-opcache php7.3-readline php-mbstring

# NGINX
RUN		apt-get install -y nginx
RUN		rm /etc/nginx/sites-enabled/default
COPY	./srcs/default.conf /etc/nginx/sites-enabled/localhost
COPY	./srcs/index.html /usr/share/nginx/html/

# WORDPRESS
RUN		cd /tmp && wget https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz
RUN		mv /tmp/wordpress /usr/share/nginx/html/wordpress
RUN		mv /usr/share/nginx/html/wordpress/wp-config-sample.php \
		/usr/share/nginx/html/wordpress/wp-config.php
COPY	./srcs/wp-config.php /usr/share/nginx/html/wordpress/
RUN		mkdir /usr/share/nginx/html/wordpress/wp-content/uploads

# PHPMYADMIN
RUN		cd /tmp && wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz && \
		tar xzfv phpMyAdmin-4.9.4-all-languages.tar.gz
RUN		mv /tmp/phpMyAdmin-4.9.4-all-languages /usr/share/nginx/html/phpmyadmin
COPY	./srcs/config.inc.php /usr/share/nginx/html/phpmyadmin/
COPY	./srcs/wordpress.sql /usr/share/nginx/html/

# MYSQL
RUN		service mysql start \
		&& echo "CREATE DATABASE wordpress;" | mysql -u root \
		&& echo "CREATE USER 'admin' IDENTIFIED BY 'admin'; | "mysql -u root \
		&& echo "GRANT USAGE ON wordpress.* TO 'admin'@'localhost' IDENTIFIED BY 'admin';" | mysql -u root \
		&& echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'localhost';" | mysql -u root \
		&& echo "FLUSH PRIVILEGES;" | mysql -u root \
		&& mysql wordpress -u admin --password=admin < /usr/share/nginx/html/wordpress.sql

# SSL
RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=75/L=Paris/O=42/CN=rturcey' \
		-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# TEST AUTOINDEX
#RUN		rm /usr/share/nginx/html/index.html

# RIGHTS & LAUNCH
RUN		chown -R www-data:www-data /usr/share/nginx/html/ && chmod 755 /usr/share/nginx/html/*
RUN		chown -R www-data:www-data /etc/ssl/certs/ && chmod 755 /etc/ssl/certs/*
CMD		service nginx start && service php7.3-fpm start && service mysql start && sleep infinity && wait