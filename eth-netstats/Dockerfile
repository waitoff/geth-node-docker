FROM node:12
#FROM ubuntu:22.04
#FROM alpine

#RUN apk add --update git bash
#RUN apk add --update git bash nodejs npm
#RUN apt-get update
#RUN apt-get install git nodejs npm
#RUN apt-get install git npm


#RUN cd /root &&\
#    git clone https://github.com/goerli/ethstats-server &&\
#    cd ethstats-server &&\
#    npm install &&\
#    npm install -g grunt-cli &&\
#    grunt poa

#WORKDIR /ethstats-server
#/bin/sh -c npm install && npm install -g grunt-cli && /usr/bin/grunt poa


RUN git clone https://github.com/goerli/ethstats-server
WORKDIR /eth-netstats
RUN npm install
#RUN npm install -g grunt-cli
#RUN npm install grunt-cli
RUN npm install -g grunt-cli bower
RUN npm install grunt-cli
RUN npm install grunt -–save-dev
RUN grunt poa


#ADD start.sh /root/start.sh
#ADD app.json /root/eth-net-intelligence-api/app.json
#RUN chmod +x /root/start.sh
EXPOSE 3000
#ENTRYPOINT /root/start.sh
#ENTRYPOINT WS_SECRET="asdf" npm start
#ENTRYPOINT npm start
CMD ["npm", "start"]