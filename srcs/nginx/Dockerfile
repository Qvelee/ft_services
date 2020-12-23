# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/16 18:07:33 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/23 18:51:40 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add nginx ; \
		apk add openssl ; \
		apk add openssh ; \
		apk add supervisor

RUN		mkdir -p /etc/nginx/ssl/ ;\
		openssl req -newkey rsa:2048 \
			-x509 \
			-sha256 \
			-days 365 \
			-nodes \
			-out /etc/nginx/ssl/nginx_serv_key.crt \
			-keyout /etc/nginx/ssl/nginx_serv_key.key \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=school21/OU=Student/"

COPY	./configs/neli_serv /etc/nginx/conf.d/default.conf
WORKDIR	/etc/setup/
RUN		mkdir -p /etc/setup/logs/
COPY	./setup_nginx.sh ./
COPY	./configs/supervisord.conf ./

# alpine linux don't create /run directory, so we need to create it
RUN		mkdir -p /run/nginx/

# creating user to login ftom ssh
RUN		echo -e "test\ntest" | adduser test

EXPOSE	22 80 443

ENTRYPOINT ["sh", "setup_nginx.sh"]
