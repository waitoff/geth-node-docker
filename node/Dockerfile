FROM quorumengineering/quorum:latest
RUN apk update && apk add bash

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

WORKDIR /root

EXPOSE 31513
EXPOSE 31513/udp
EXPOSE 8545

ENTRYPOINT /root/start.sh
