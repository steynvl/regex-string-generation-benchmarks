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

# exrex
RUN pip3 install exrex

# generex
ADD generex/generex.jar /

# regldg
ADD regldg/regldg /

# egret
ADD egret/egret.py /

# brics
ADD brics/brics.jar /

# rex
RUN apt-get install -y mono-complete
ADD rex/Rex.exe /
RUN mono Rex.exe

# mutrex
ADD mutrex/mutrex.jar /

ADD run_benchmarks.sh /
CMD [ "./run_benchmarks.sh" ]
