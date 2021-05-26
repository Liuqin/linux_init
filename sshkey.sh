#! bin/bash

sudo ssh-keygen -t rsa -f liuqin -C "liuqin key"
echo '私钥'
sudo cat  ~/.ssh/id_rsa
echo '公钥'
sudo cat  ~/.ssh/id_rsa.pub
