#! bash/bin
sudo docker pull jenkinsci/blueocean
sudo  mkdir /var/jenkins_home/
sudo mkdir /jenkins/password/
chown 1000:1000 /var/jenkins_homme
　
#　docker容器中jenkins用户和用户组id为1000，需要修改后目录才能映射成功
docker run -d -p 9999:8080 -v /var/jenkins_home/:/var/jenkins_home/ -v /jenkins/password/:var/jenkins_home/secrets/initialAdminPassword --name="jenkins" jenkinsci/blueocean

