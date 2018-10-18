FROM node:10.9.0-slim

ENV INSTALL_PATH /onbitforms-client

RUN npm install -g @angular/cli
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY package.json package-lock.json
COPY . .
RUN npm install
CMD ["npm", "start"]
