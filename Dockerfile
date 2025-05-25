FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl

COPY certs/cert.crt /etc/nginx/ssl/cert.crt
COPY certs/cert.key /etc/nginx/ssl/cert.key

RUN chmod 600 /etc/nginx/ssl/cert.key