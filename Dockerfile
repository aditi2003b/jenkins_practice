FROM nginx

RUN rm -rf /usr/share/nginx/html/*

WORKDIR /data

EXPOSE 8000:8000

COPY . .
