FROM ubuntu
RUN  apt update -y
RUN  apt install apache2  -y
COPY web.conf /etc/apache2/sites-enabled/web.conf
RUN rm -f /etc/apache2/sites-enabled/000-default.conf
RUN mkdir -p /var/www/site
COPY index.html /var/www/site
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
