# php56-fpm-centos7-mysql56

## Vagrant
```bash
git clone https://github.com/heyMP/php56-fpm-centos7-mysql56.git; cd php56-fpm-centos7-mysql56; vagrant up
```

## PROD
```bash
yes | yum -y install git && git clone https://github.com/heyMP/php56-fpm-centos7-mysql56.git && cd php56-fpm-centos7-mysql56 && chmod 700 install/prod.sh && install/prod.sh && post-install.sh
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

## Configure Clean URLS

Make sure `AllowOverride ALL` is set for the document root `/var/www/html`

```
# Example
<Directory "/var/www/html">
  AllowOverride ALL
</Directory>
```

## Setting Drupal Permissions

After you have installed Drupal run you can use this script to set security perms.

```
# Example
bash ~/php56-fpm-centos7-mysql56/security/drupal-perms.sh --drupal_path=/var/www/html/ --drupal_user=root --httpd_group=apache
```

## Install Virtual Hosts

https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-centos-7

## Setting up users

https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7

## Disable Root Login w/Password

https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2

## Disable sudo password for wheel users

Add to bottom of `/etc/sudoers`. Then restart apache.
```
## Disable sudo password for wheel users
ALL            ALL = (ALL) NOPASSWD: ALL
```
http://serverfault.com/questions/160581/how-to-setup-passwordless-sudo-on-linux

## Additional Resources

https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7
