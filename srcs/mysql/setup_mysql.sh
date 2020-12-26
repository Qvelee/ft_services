# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup_mysql.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/20 17:42:55 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/26 12:03:51 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

mysql_install_db --user=mysql --datadir=/var/lib/mysql	# initializes the MariaDB data directory and creates the system tables in the mysql database
rc-update add mariadb default							# adding mariadb service to default alpine linux runlevel
openrc default											# swap current runlevel to default (here is sending services)
mysql < ./mysql_config									# send commands to mysql to create wordpress database
mysql wordpress_database < ./wordpress_database.sql		# send wordpress database (with users)
rc-service mariadb stop									# stop mysql daemon
cp ./my.cnf /etc/
/usr/bin/mysqld_safe --datadir=/var/lib/mysql			# run mysql like process
