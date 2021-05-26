#! bash/bin
docker stop mysql3306 && docker rm mysql3306
# mysql
docker run -d --name=mysql3306 -p 127.0.0.1:3306:3306 -e MYSQL_ROOT_PASSWORD=a123456 mysql:5.6

#down link https://github.com/ansible-semaphore/semaphore/releases/download/v2.6.9/semaphore_2.6.9_linux_arm64.deb

tar  -zvxf  semaphore_2.6.9_linux_amd64.tar.gz
cd semaphore
sudo mv semaphore /usr/bin/semaphore
sudo semaphore --setup


# nohup ./semaphore -config yes/config.json &