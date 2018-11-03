FROM centos:7
RUN yum -y update && \
    yum -y install epel-release && \
    rpm --import https://rpms.remirepo.net/RPM-GPG-KEY-remi && \
    yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php71 && \
    yum -y install httpd && \
    yum -y install php-fpm php-cli php-opcache php-apcu php-pdo php-mysqlnd php-mbstring php-mcrypt php-xml php-intl php-gd php-gmp php-zip php-soap php-pear php-redis php-memcache && \
    yum -y install php-devel php-phpunit-PHPUnit php-pecl-xdebug && \
    yum -y install libreoffice libreoffice-langpack-ja && \
    yum -y install ipa-gothic-fonts ipa-mincho-fonts urw-fonts.noarch && \
    rm -rf /var/cache/yum/* && \
    yum clean all && \
    mkdir /var/run/php-fpm && \
    mkdir -m 777 /var/www/html/logs && \
    mkdir -m 777 /var/www/html/tmp
RUN cd /usr/local/bin/ && \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar composer
COPY etc /etc
COPY bin /bin
CMD ["setup.sh"]