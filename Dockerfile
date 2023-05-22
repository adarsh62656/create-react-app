FROM nginx
COPY s3 /usr/share/nginx/html
COPY nginx.conf /etc/nginx/
EXPOSE 80