#! bin/bash

echo ' install the tools of baota pannel in docker'
docker rm baota123
docker run -i -t -d --name baota123 -p 20:20 -p 21:21 -p 80:80 -p 443:443 -p 888:888 -p 8888:8888  --dns 8.8.8.8 --dns 8.8.4.4 --privileged=true -v /home/www:/www centos
docker exec  -it --user root $(docker ps -q -a --filter name=^/baota123$)  /bin/bash
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh

