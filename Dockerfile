FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx

RUN rm -rf /var/www/html/*
COPY . /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
