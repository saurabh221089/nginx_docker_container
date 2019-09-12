FROM alpine:latest

MAINTAINER saurabh221089 <saurabh221089@gmail.com>

RUN apk update && \
	apk upgrade && \
	apk add bash curl nginx && \
	mkdir /home/www && \
	rm -rf /var/cache/apk/*

COPY /profile /home/www
COPY /default.conf /etc/nginx/conf.d/default.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir -p /run/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]