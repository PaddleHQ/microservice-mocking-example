FROM node:9.4-alpine

RUN npm install -g mountebank --production \
&& npm cache clean --force \
&& rm -rf /tmp/npm*

EXPOSE 443 8080

CMD ["mb", "--configfile", "/mb/imposters.ejs", "--allowInjection"]
