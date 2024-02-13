FROM node:20-alpine

COPY ./packages/my_service /usr/src/app

WORKDIR /usr/src/app

RUN npm set registry http://127.0.0.1:4873

RUN rm -rf /usr/src/app/dist

RUN rm -rf /usr/src/app/node_modules

RUN npm install

RUN npx tsc

ENTRYPOINT node dist/index.js
