#! bin/bash
echo 'auto install ...'
sudo - root

apt install iptables
update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

echo 'backup the sources.list'
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo 'replace the source as alibaba '
sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
echo 'remove the coments start with #'
sed -i '/^#/d' /etc/apt/sources.list
echo 'system updating...'
apt-get update -y
echo ' install the tools of baota pannel..'
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh

