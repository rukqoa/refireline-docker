FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

ARG DOMAIN
ARG IP

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN sed -i -e "s|{IP}|$IP|g" /etc/nginx/conf.d/default.conf
RUN sed -i -e "s|{DOMAIN}|$DOMAIN|g" /etc/nginx/conf.d/default.conf
