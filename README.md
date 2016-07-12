# php56-fpm-centos7-mysql56

## Vagrant
```bash
git clone https://github.com/bradallenfisher/php56-fpm-centos7-mysql56.git; cd php56-fpm-centos7-mysql56; vagrant up
```

## PROD
```bash
yes | yum -y install git && git clone https://github.com/bradallenfisher/php56-fpm-centos7-mysql56.git && cd php56-fpm-centos7-mysql56 && chmod 700 install/prod.sh && install/prod.sh && post-install.sh
```

## MYSQL setup

Set up new mysql password
```
mysql_secure_installation
```

If this doesn't allow you to run, check to see if there is a temp password.
```
grep 'temporary password' /var/log/mysqld.log
```

If there was a temp password generated then it will be displayed.  Use this to run `mysql_secure_installation`.

## Setting up users

https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7

## Disable Root Login w/Password

https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2

## Additional Resources

https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7
