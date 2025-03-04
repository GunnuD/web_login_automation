FROM ubuntu:18.04

MAINTAINER ybmsr <dspa.mobile04@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt -y update

RUN apt install -y nodejs

RUN apt install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
