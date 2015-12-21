# php7-fpm-centos7-mysql5.6

## Vagrant
```bash
git clone https://github.com/bradallenfisher/php56-fpm-centos7-mysql56.git; cd php56-fpm-centos7-mysql56; vagrant up
```

## PROD
```bash
yes | yum -y install git && git clone https://github.com/bradallenfisher/php56-fpm-centos7-mysql56.git && cd php56-fpm-centos7-mysql56 && chmod 700 install/prod.sh && install/prod.sh
```
