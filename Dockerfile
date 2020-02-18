FROM node:10-slim
RUN apt-get update || : && apt-get install python -y
RUN npm install -g grpc
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
