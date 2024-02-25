#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum -y install git
git clone https://github.com/03Aziz02/ecomm.git
sudo mv ecomm/ /var/www/html/
sudo systemctl restart httpd
