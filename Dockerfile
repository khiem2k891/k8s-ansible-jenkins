FROM centos:latest
RUN yum install -y httpd \
    echo "khiem" > index.html

WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22