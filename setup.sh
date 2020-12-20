# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:33:40 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/20 23:07:23 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --vm-driver=virtualbox
minikube addons enable metallb

eval $(minikube docker-env)
docker build -t ftps_image ./srcs/ftps/
docker build -t nginx_image ./srcs/nginx/
docker build -t mysql_image ./srcs/mysql/

kubectl apply -f ./srcs/configs/
kubectl apply -f ./srcs/ftps/configs/
kubectl apply -f ./srcs/nginx/configs/
kubectl apply -f ./srcs/mysql/configs/
