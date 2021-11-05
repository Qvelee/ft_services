# ft_services

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
8) influxdb - service with database used by telegraf and grafana.

**Build**

To build and run project just run `setup.sh` in project root directory.

_It is necessary to install minikube, VirtualBox and Docker to build project._

**Usage**

To access minikube administrating tool run `minikube dashboard` and open received link in browser. Then, find the field **Services** to access all working services.
