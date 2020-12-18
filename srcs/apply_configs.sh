# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    apply_configs.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:39:12 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/18 16:40:07 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

kubectl apply -f ./configs/
kubectl apply -f ./ftps/configs/
kubectl apply -f ./nginx/configs/
