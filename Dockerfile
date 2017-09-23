FROM ubuntu:16.04
RUN apt-get update && apt-get install -y software-properties-common curl wget
RUN add-apt-repository ppa:jean-francois-dockes/upnpp1

RUN apt-get update && apt-get install upmpdcli -y

EXPOSE 1900/udp

ENTRYPOINT ["upmpdcli"]
