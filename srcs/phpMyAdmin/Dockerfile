# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/24 13:53:08 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/24 15:27:47 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add supervisor ; \
		apk add nginx ; \
		apk add php7 php7-fpm php7-common php7-openssl php7-mysqlnd \
		php7-mysqli php7-bz2 php7-ctype php7-curl php7-gd \
		php7-json php7-mbstring php7-session php7-zip

WORKDIR	/etc/setup/
RUN		mkdir -p /etc/setup/logs/
RUN		mkdir -p /run/nginx/

COPY	./configs/supervisord.conf ./
COPY	./configs/pma_nginx /etc/nginx/conf.d/default.conf
COPY	./configs/phpMyAdmin-5.0.4.tar.gz ./
RUN		tar -xzvf ./phpMyAdmin-5.0.4.tar.gz
COPY	./configs/config.inc.php ./phpMyAdmin/

EXPOSE	5000

ENTRYPOINT ["supervisord", "-c", "supervisord.conf"]
