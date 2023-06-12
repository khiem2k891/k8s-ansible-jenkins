FROM centos:latest
RUN yum install -y httpd 
RUN echo "khiem" > /var/www/html/index.html

WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22