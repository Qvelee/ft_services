# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/14 15:12:24 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/29 20:02:27 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add vsftpd ; \
		apk add openssl

COPY	./configs/vsftpd.conf /etc/vsftpd/

#add user for ftp to login
RUN		mkdir -p /home/ftp_root ; \
		echo -e "root\nroot" | adduser ftp_root ;\
		chown ftp_root:ftp_root /home/ftp_root

#creating secret key for ftps (secured) connection
RUN		mkdir -p /etc/vsftpd/ssl ;\
		openssl req -newkey rsa:2048 \
			-x509 \
			-sha256 \
			-days 365 \
			-nodes \
			-out /etc/vsftpd/ssl/ftp_serv_key.crt \
			-keyout /etc/vsftpd/ssl/ftp_serv_key.key \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=school21/OU=Student/"

WORKDIR	/etc/setup/
COPY	./setup_ftp.sh ./

EXPOSE	20 21 10000

ENTRYPOINT ["sh", "setup_ftp.sh"]
