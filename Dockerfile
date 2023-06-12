FROM centos:latest
RUN yum install -y httpd \
    echo "khiem" > index.html

ADD index.html > /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

