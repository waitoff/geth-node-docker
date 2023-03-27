FROM quorumengineering/quorum:latest

RUN apk update && apk add bash

#COPY genesis.json /root/genesis.json

ADD boot.sh /root/boot.sh
RUN chmod +x /root/boot.sh

WORKDIR /root
RUN ls /root


EXPOSE 31513
EXPOSE 31513/udp
EXPOSE 8545

#ENTRYPOINT ["/bin/sh", "-c", "/root/boot.sh"]
ENTRYPOINT /root/boot.sh
#ENTRYPOINT - /bin/sh -c geth --datadir $${DDIR} init $${GENESIS_FILE}
