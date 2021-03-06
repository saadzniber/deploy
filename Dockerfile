FROM node:10-slim
USER root
RUN apt-get update || : && apt-get install python -y
RUN apt-get -y install build-essential 
RUN npm install grpc@1.20.0
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
