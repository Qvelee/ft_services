# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/20 23:08:26 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/20 23:36:13 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add openssl ; \
		apk add nginx ; \
		apk add php7.3-fpm php7.3-common php7.3-mbstring \ 
                    php7.3-xmlrpc php7.3-soap php7.3-gd php7.3-xml \
                    php7.3-intl php7.3-mysql php7.3-cli php7.3-zip \
                    php7.3-curl

WORKDIR	/etc/setup/

COPY	./configs/wordpress-5.6.zip ./
RUN		tar -xzvf ./configs/wordpress-5.6.zip
RUN		

EXPOSE	5050
