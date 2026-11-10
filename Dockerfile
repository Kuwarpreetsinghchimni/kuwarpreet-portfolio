FROM nginx:alpine

COPY portfolio.html /usr/share/nginx/html/index.html
COPY passport-size.jpg /usr/share/nginx/html/passport-size.jpg

RUN sed -i 's/listen       80;/listen       10000;/' /etc/nginx/conf.d/default.conf

EXPOSE 10000
