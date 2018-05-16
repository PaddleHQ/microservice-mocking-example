FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/* \
	&& mkdir -p /var/www/html/public

COPY docker/nginx/site.conf /etc/nginx/conf.d/site.conf