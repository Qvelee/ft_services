# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:33:40 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/22 18:00:00 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --vm-driver=virtualbox
minikube addons enable metallb

eval $(minikube docker-env)
docker build -t ftps_image ./srcs/ftps/
docker build -t nginx_image ./srcs/nginx/
docker build -t mysql_image ./srcs/mysql/
docker build -t wordpress_image ./srcs/wordpress/

kubectl apply -f ./srcs/configs/
kubectl apply -f ./srcs/ftps/configs/
kubectl apply -f ./srcs/nginx/configs/
kubectl apply -f ./srcs/mysql/configs/
kubectl apply -f ./srcs/wordpress/configs/
