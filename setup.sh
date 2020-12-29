# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:33:40 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/29 22:04:28 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mkdir -p ./srcs/logs/
rm -rf ./srcs/logs/*
minikube start --vm-driver=virtualbox --log_dir ./srcs/logs --memory=4000m	# start claster with one node
minikube addons enable metallb												# enable srvice-manager 

eval $(minikube docker-env)													# add docker env vars (docker will built images for virtual machine)

docker build -t ftps_image ./srcs/ftps/
docker build -t nginx_image ./srcs/nginx/
docker build -t mysql_image ./srcs/mysql/
docker build -t wordpress_image ./srcs/wordpress/
docker build -t pma_image ./srcs/phpMyAdmin/
docker build -t influxdb_image ./srcs/influxdb/
docker build -t telegraf_image ./srcs/telegraf/
docker build -t grafana_image ./srcs/grafana/

kubectl apply -f ./srcs/configs/
kubectl apply -f ./srcs/ftps/configs/
kubectl apply -f ./srcs/nginx/configs/
kubectl apply -f ./srcs/mysql/configs/
kubectl apply -f ./srcs/wordpress/configs/
kubectl apply -f ./srcs/phpMyAdmin/configs/
kubectl apply -f ./srcs/influxdb/configs/
kubectl apply -f ./srcs/telegraf/configs/
kubectl apply -f ./srcs/grafana/configs/
