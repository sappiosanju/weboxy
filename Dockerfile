FROM registry.access.redhat.com/rhscl/httpd-24-rhel7 
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf
RUN chown -R 1001:0 /var/www/ /var/log/httpd /run/httpd /etc/httpd
RUN chgrp -R g=u /var/www/ /var/log/httpd /run/httpd /etc/httpd
USER 1001
EXPOSE 8080
