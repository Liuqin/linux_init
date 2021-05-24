#! bin/bash
# sudo service docker start
# sudo service docker restart
port=9999
echo  'default port:' $port



if  [ -n "$1" ] ;then
   echo '$1' $1 $2
   port=$2
   echo 'port changed to' $2
fi

echo 'port => '$port
docker rm -f jenkins$port
sudo docker run -p $port:8080 -p 50000:50000  --dns 8.8.8.8 --dns 8.8.4.4 --name  jenkins$port -v jenkins_data:/var/jenkins_home jenkins/jenkins:lts

