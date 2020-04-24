FROM ubuntu:16.04

# Upgrade base system
RUN apt-get update
WORKDIR /venv
COPY ubuntu_orc32full.sh /venv
RUN chmod a+x /venv/*
CMD ./ubuntu_orc32full.sh
