FROM ubuntu:16.04

MAINTAINER Steyn van Litsenborgh <steyn.van.l@gmail.com>

# update the system
RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y wget
RUN apt-get install -y git

RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

RUN apt-get install -y maven

# generex
ADD generex/generex.jar /

# regldg
RUN wget https://regldg.com/regldg-1.0.0.tar.gz
RUN tar -xvf 

# hampi
# ADD hampi/hampi.jar /

# egret

# brics

# rex

# rescue

# jst

# mutrex

ADD run_benchmarks.sh /
CMD [ "./run_benchmarks.sh" ]
