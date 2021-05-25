#! bin/bash

sudo apt-get install -y maven

sudo apt-get install -y openjdk-8-jdk
sudo docker stop gogs &&  docker rm gogs
sudo docker run --name=gogs -d  -p 10022:22 -p 8808:3000 -v /var/gogs:/data gogs/gogs
