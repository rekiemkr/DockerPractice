FROM ubuntu:latest

RUN apt-get -y update \
    && apt-get install -y nginx  nano 

ADD dir/index.html /var/www/html/example/
ADD dir/example.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g","daemon off;"]



