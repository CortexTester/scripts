#!/bin/sh
sudo yum install epel-release
sudo yum install http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm
sudo yum update
sudo yum install git