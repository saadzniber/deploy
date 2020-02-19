FROM node:13.8.0-slim
USER root
RUN apt-get update || : && apt-get install python -y 
RUN npm install -g grpc
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
