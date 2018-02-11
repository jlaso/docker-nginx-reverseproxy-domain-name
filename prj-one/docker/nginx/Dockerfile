FROM debian:jessie

RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/
ADD web.conf /etc/nginx/sites-available/

RUN rm /etc/nginx/sites-enabled/default \
    && ln -s /etc/nginx/sites-available/web.conf /etc/nginx/sites-enabled/web \
    && usermod -u 1000 www-data \
    && echo 'alias ll="ls -la"' >> ~/.bashrc\
    && mkdir /var/www/web

ADD web/index.html /var/www/web/

CMD ["nginx"]

WORKDIR /var/www/web

EXPOSE 80
