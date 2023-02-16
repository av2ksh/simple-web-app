FROM ubuntu:latest
RUN apt -y update
RUN apt -y install nginx
COPY ./index.html /var/www/html/index.html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
