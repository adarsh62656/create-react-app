FROM nginx
COPY s3 /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
EXPOSE 80