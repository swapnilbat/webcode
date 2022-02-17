FROM centos:7
MAINTAINER swapnil.batavale@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hangover.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip hangover.zip
RUN cp -rvf hangover/* .
RUN rm -f hangover.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
