FROM ubuntu:latest

ENV HOME /home
WORKDIR $HOME

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:alessandro-strada/ppa
RUN apt-get update
RUN apt-get install -y google-drive-ocamlfuse bzip2 curl kmod qemu-utils rsync
