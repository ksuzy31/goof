FROM node:6.14.1-slim

RUN apt-get update
RUN apt-get install -y firewalld beep
RUN apt-get install -y imagemagick

FROM node:14.21.1

RUN npm update

