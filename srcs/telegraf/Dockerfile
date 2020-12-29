# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/26 19:01:03 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/29 16:37:00 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ;

WORKDIR /etc/
RUN 	mkdir -p /config/
COPY	./configs/telegraf.conf /config/
COPY	./configs/telegraf-1.17.0.tar.gz ./
RUN		tar -xzvf /etc/telegraf-1.17.0.tar.gz

EXPOSE	8086

ENTRYPOINT ["./telegraf/usr/bin/telegraf", "--config", "/config/telegraf.conf"]
