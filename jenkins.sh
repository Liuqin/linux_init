#! bash/bin

$port= 9999
while getopts p: opt;
do
case $opt in
p)
  port=$opt
   ;;
esac
done

sudo docker pull jenkinsci/blueocean
$jenkins_home= /var/jenkins_home/
$jenkins_password= /jenkins/password/

if [ ! -d "$jenkins_home"]; then  
    sudo mkdir "$jenkins_home"  
fi  
if [ ! -d "$jenkins_password"]; then  
    sudo mkdir "$jenkins_password"  
fi 
chown 1000:1000 /var/jenkins_homme
#　docker容器中jenkins用户和用户组id为1000，需要修改后目录才能映射成功
docker run -d -p $port:8080 -v $jenkins_home:/var/jenkins_home/ -v $jenkins_password:var/jenkins_home/secrets/initialAdminPassword --name="jenkins" jenkinsci/blueocean

