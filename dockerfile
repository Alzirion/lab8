FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install nginx -y
WORKDIR /var/www/html
COPY files/index.html .
ENV OWNER=alzirion
ENV TYPE=demo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
