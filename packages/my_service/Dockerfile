FROM node:20-alpine

ARG REGISTRY_URL

ENV REGISTRY_URL=${REGISTRY_URL}

COPY ./packages/my_service /usr/src/app

WORKDIR /usr/src/app

RUN npm set registry ${REGISTRY_URL}

# need to delete this (verdaccio is not in localhost here)
RUN rm -rf /usr/src/app/package-lock.json

RUN npm install

RUN npx tsc

ENTRYPOINT node dist/index.js
