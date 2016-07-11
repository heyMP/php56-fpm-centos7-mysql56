# install drush-7.x for all users
mkdir --parents /opt/drush-7.x
cd /opt/drush-7.x
composer init --require=drush/drush:7.* -n
composer config bin-dir /usr/local/bin
composer install
