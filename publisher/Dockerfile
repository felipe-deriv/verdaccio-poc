FROM node:20-alpine

ARG REGISTRY_URL

ENV REGISTRY_URL=${REGISTRY_URL}

COPY ./publisher/entrypoint.sh /bin/entrypoint

WORKDIR /packages

RUN npm set registry ${REGISTRY_URL}

ENTRYPOINT entrypoint
