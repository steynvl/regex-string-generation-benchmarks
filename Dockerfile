FROM ubuntu:18.04

MAINTAINER Steyn van Litsenborgh <steyn.van.l@gmail.com>

# update the system
RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y git
RUN apt-get install -y python3-pip
RUN apt-get install -y maven

# setup exrex
RUN pip3 install exrex

# setup generex
ADD generex/generex.jar /

ADD run_benchmarks.sh /
CMD [ "./run_benchmarks.sh" ]
