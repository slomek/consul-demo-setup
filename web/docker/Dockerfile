FROM alpine:latest

RUN apk update && apk add unzip curl

RUN cd /tmp/ && curl https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip -o consul.zip && \
    unzip consul.zip && chmod +x consul && mv consul /usr/bin/consul && mkdir /etc/consul.d && \
    chmod a+w /etc/consul.d

ADD webapp /webapp
ADD start.sh /start.sh

RUN chmod +x /start.sh
RUN chmod +x /webapp

ADD web-service.json /etc/consul.d/web-service.json

EXPOSE 3000

CMD ["/start.sh"]
