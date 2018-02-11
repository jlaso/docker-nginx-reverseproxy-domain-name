FROM debian:jessie

RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/
ADD one.conf /etc/nginx/sites-available/
ADD two.conf /etc/nginx/sites-available/
# ADD web.conf /etc/nginx/sites-available/

RUN rm /etc/nginx/sites-enabled/default \
   # && ln -s /etc/nginx/sites-available/web.conf /etc/nginx/sites-enabled/web \
    && ln -s /etc/nginx/sites-available/one.conf /etc/nginx/sites-enabled/one \
    && ln -s /etc/nginx/sites-available/two.conf /etc/nginx/sites-enabled/two \
    && usermod -u 1000 www-data \
    && echo 'alias ll="ls -la"' >> ~/.bashrc

CMD ["nginx"]

WORKDIR /var/www/web

EXPOSE 80
