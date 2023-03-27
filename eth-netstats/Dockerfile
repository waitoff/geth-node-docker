FROM alpine

RUN apk add --update git bash nodejs npm

RUN cd /root &&\
    git clone https://github.com/goerli/ethstats-server &&\
    cd ethstats-server &&\
    npm install &&\
    npm install -g grunt-cli &&\
    grunt poa

#ADD start.sh /root/start.sh
#ADD app.json /root/eth-net-intelligence-api/app.json
#RUN chmod +x /root/start.sh

#ENTRYPOINT /root/start.sh
#ENTRYPOINT WS_SECRET="asdf" npm start
ENTRYPOINT npm start