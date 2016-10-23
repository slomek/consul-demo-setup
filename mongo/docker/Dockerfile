FROM mongo:latest

RUN apt-get update && apt-get install -y unzip curl

RUN cd /tmp/ && curl https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip -o consul.zip && \
    unzip consul.zip && chmod +x consul && mv consul /usr/bin/consul && mkdir /etc/consul.d && \
    chmod a+w /etc/consul.d

ADD start.sh /start.sh
RUN chmod +x /start.sh

ADD mongo-service.json /etc/consul.d/mongo-service.json

# EXPOSE 8300
EXPOSE 27017

CMD ["/start.sh"]
