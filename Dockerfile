FROM node:12

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./node-js/package*.json ./

RUN npm install

COPY ./node-js/ .

EXPOSE 8080
CMD [ "node", "server.js" ]
