# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/20 23:08:26 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/22 17:40:23 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add supervisor ; \
		apk add openssl ; \
		apk add nginx ; \
		apk add php7 php7-fpm php7-opcache \
			php7-common php7-iconv \
			php7-json php7-gd php7-curl php7-xml \
			php7-mysqli php7-imap php7-cgi fcgi \
			php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc \
			php7-posix php7-mcrypt php7-gettext php7-ldap \
			php7-ctype php7-dom php7-gd php7-zlib
			
WORKDIR	/etc/setup/
RUN		mkdir -p /etc/setup/logs/
RUN		mkdir -p /run/nginx/

COPY	./configs/supervisord.conf ./
COPY	./configs/wordpress_nginx /etc/nginx/conf.d/default.conf
COPY	./configs/wordpress-5.6.tar.gz ./
RUN		tar -xzvf ./wordpress-5.6.tar.gz
COPY	./configs/wp-config.php ./wordpress/

EXPOSE	5050

ENTRYPOINT ["supervisord", "-c", "supervisord.conf"]
