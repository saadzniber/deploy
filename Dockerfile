FROM node:13.8.0-slim
RUN npm install -g grpc
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
