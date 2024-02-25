sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum -y install git
git clone https://github.com/03Aziz02/food.git
sudo mv food/ /var/www/html
sudo systemctl restart httpd
