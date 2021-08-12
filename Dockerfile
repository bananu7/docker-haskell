FROM ubuntu
RUN apt-get update
RUN apt-get install -y wget git

# install stack
RUN wget -qO- https://get.haskellstack.org/ | sh

RUN stack --resolver lts-18.5 setup
