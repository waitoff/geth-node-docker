FROM ubuntu:22.04
LABEL version="10.0"

RUN apt-get update && apt-get install --yes software-properties-common apt-utils

#RUN add-apt-repository ppa:ethereum/ethereum
#RUN apt-get update && apt-get install geth --yes

wget https://artifacts.consensys.net/public/go-quorum/raw/versions/v22.7.2/geth_v22.7.2_linux_amd64.tar.gz \
tar -xf geth_v22.7.2_linux_amd64.tar.gz

ADD geth /root/
RUN chmod +x /root/geth

ADD ../files/genesis.json /root/
#ADD http://boot.joys.digital/posa/static-nodes.json /root/

ADD boot.sh /root/boot.sh
RUN chmod +x /root/boot.sh

EXPOSE 31323
EXPOSE 31323/udp
EXPOSE 8545

ENTRYPOINT /root/boot.sh
