FROM node:12

RUN git clone https://github.com/goerli/ethstats-server
WORKDIR /eth-netstats
RUN npm install
RUN npm install -g grunt-cli bower
RUN npm install grunt-cli
RUN npm install grunt -–save-dev
RUN grunt poa

EXPOSE 3000
CMD ["npm", "start"]