# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/26 12:16:35 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/26 18:47:30 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add influxdb

COPY	./configs/influxdb.conf /etc/

EXPOSE	8086

ENTRYPOINT ["/usr/sbin/influxd"]
