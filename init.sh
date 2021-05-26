#! bin/bash
echo 'auto install ...'
sudo - root


echo 'backup the sources.list'
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo 'replace the source as alibaba '
sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
echo 'remove the coments start with #'
sed -i '/^#/d' /etc/apt/sources.list
echo 'system updating...'
apt-get update -y
#mv /usr/bin/systemctl /usr/bin/systemctl.old
#sudo curl https://gitee.com/liuqin2014/package/blob/master/systemctl.py > /usr/bin/systemctl
#chmod +x /usr/bin/systemctl

sudo apt-get install daemonize -y
sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target



