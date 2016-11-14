FROM golang:1.7

MAINTAINER Tiago Queiroz

RUN apt-get update

RUN apt-get install -y zip

RUN apt-get install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs

RUN go get github.com/Masterminds/glide
RUN go install github.com/Masterminds/glide
RUN go get -u github.com/jstemmer/go-junit-report

RUN npm install -g aglio
