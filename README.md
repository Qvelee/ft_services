**ft_services**

Deployment of multiple services with Kubernetes.

**Descpription**
The result of deployment is cluster with 8 services running in their own containers:
1) Wordpress - website main page service;
2) MySql - service with wordpress database;
3) phpMyAdmin - database administrating service;
4) ftps - file server;
5) nginx - redirect and proxy server for wordpress and phpMyAdmin;
6) grafana - service for services state visualization;
7) telegraf - service for collecting metrics about databases etc.
8) influxdb - service with database used by telegrad and grafana.

**Build**


**Usage**

