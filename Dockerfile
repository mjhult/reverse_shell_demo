FROM ubuntu:latest
LABEL bad_web="bad_web"
RUN apt-get update && apt-get install -y software-properties-common gcc && add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt nodejs npm iputils-ping
RUN mkdir -p /bad
WORKDIR /bad
COPY ./ /bad
EXPOSE 3000
RUN npm i
CMD ["npm", "run", "start"]