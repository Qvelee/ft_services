# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:33:40 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/18 16:40:51 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --vm-driver=virtualbox
minikube addons enable metallb
minikube ssh < ./srcs/minikube_start > ./srcs/logs/minikube_logs
bash ./srcs/apply_configs.sh
