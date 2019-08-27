FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

ARG COMMITHASH=10

ENV LASTCOMMITHASH=$COMMITHASH

RUN npm install

# Bundle app source
COPY src/server.js .

CMD [ "node", "server.js" ]
