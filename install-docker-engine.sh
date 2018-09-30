#!/bin/bash
echo install docker engine
echo update OS
yum update -y
echo executing the docker install script
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce-18.03.1.ce
systemctl enable docker
echo set allow remote api
sed -i 's/ExecStart=\/usr\/bin\/dockerd/ExecStart=\/usr\/bin\/dockerd -H unix:\/\/var\/run\/docker.sock -H tcp:\/\/0.0.0.0:2375/' /lib/systemd/system/docker.service
sudo systemctl daemon-reload
echo starting and activating the docker engine service
systemctl start docker
echo add $(whoami) to docker group
usermod -aG docker $(whoami)
echo stop firewall
systemctl stop firewalld
exit