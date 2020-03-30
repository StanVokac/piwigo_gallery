FROM alpine
RUN apk update && apk upgrade
RUN apk add apache2 apache2-ctl apache2-proxy apache2-utils apache2-ssl php7 \
    php7-pear php7-common php7-xsl php7-fpm php7-mysqlnd php7-pecl-imagick php7-fileinfo \
    php7-mbstring php7-xmlrpc php7-exif php7-ldap php7-session php7-gd php7-json php7-xml \
    php7-curl php7-pecl-apcu php7-cgi php7-ctype php7-dom php7-mysqli php7-simplexml php7-xmlwriter supervisor

COPY --chown=apache:apache ./www /var/www/html
RUN sed -i 's/user = nobody/user = apache/g' /etc/php7/php-fpm.d/www.conf && sed -i 's/group = nobody/group = apache/g' /etc/php7/php-fpm.d/www.conf
COPY ./config/default.conf /etc/apache2/vhosts.d/default.conf
COPY ./config/supervisord.conf /etc/supervisord.conf 
COPY ./config/httpd.conf /etc/apache2/httpd.conf
EXPOSE 80

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]

