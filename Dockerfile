# -----------------------------------------------------------------------------
# docker-spigot
#
# Authors: TimeLiar,SmallsohoSolo
# Updated: Jan 31th, 2017
# Require: Docker (http://www.docker.io/)
# -----------------------------------------------------------------------------

# Base system is the LTS version of Ubuntu.
FROM ubuntu:17.04
#FROM java:8
MAINTAINER TimeLiar
# ADD MAIN FILE
ADD . /spigot
########################## oracle-java8 #################################################
# Download and install everything from the repos.
# RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
# 	  && apt-get update \
#     && apt-get install -y software-properties-common \
#     && add-apt-repository -y ppa:webupd8team/java \
#     && apt-get update \
#     && apt-get install -y oracle-java8-installer \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/* \
#     && rm -rf /var/cache/oracle-jdk8-installer
########################## openjdk-8-jre ################################################
RUN apt-get -y update \
    && apt-get -y install openjdk-8-jre-headless wget \
    && rm -rf /var/lib/apt/lists/* \
	&& apt-get purge -y --auto-remove wget \
	&& apt-get clean \
	&& apt-get autoremove \
	&& chmod +x /spigot/startup.sh
# set java env
WORKDIR /spigot
VOLUME ["/spigot"]
CMD ["/bin/bash","startup.sh"]
EXPOSE 25565
# /data contains static files and database
