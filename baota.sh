#! bin/bash


docker stop baota123
docker rm baota123
docker run -i -t -d --name baota123 -p 20:20 -p 21:21 -p 80:80 -p 443:443 -p 888:888 -p 8888:8888  --dns 8.8.8.8 --dns 8.8.4.4 --privileged=true -v /home/www:/www centos:7.2.1511
docker exec  -it --user root $(docker ps -q -a --filter name=^/baota123$)  /bin/bash -c "yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh -y"
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
# echo "">sources.list
# echo "deb https://mirrors.aliyun.com/debian  stable main contrib non-free">>sources.list
# echo "deb https://mirrors.aliyun.com/debian  stable-updates main contrib non-free">>sources.list
# yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh -y

