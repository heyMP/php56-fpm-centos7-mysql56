#/!/bin/bash

# install apache
yum install httpd -y

# get some repos
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -Uvh remi-release-7.rpm

# get latest mysql
yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm 
yum install -y mysql mysql-server
systemctl enable mysqld.service
/bin/systemctl start  mysqld.service
yum update -y

yum install -y --enablerepo=remi-php56 php php-apcu php-fpm php-opcache php-cli php-common php-gd php-mbstring php-mcrypt php-pdo php-xml php-mysqlnd

# fix date timezone errors
sed -i 's#;date.timezone =#date.timezone = "America/New_York"#g' /etc/php.ini

# Make sue services stay on after reboot

systemctl enable httpd.service
systemctl enable mysqld.service
systemctl enable php-fpm.service

# Start all the services we use.
systemctl start php-fpm.service
systemctl start  mysqld.service
systemctl start httpd.service

# Install Drush globally.
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
ln -s /usr/local/bin/composer /usr/bin/composer
