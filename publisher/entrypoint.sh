#!/bin/sh

npm login --registry ${REGISTRY_URL}

npm install --global typescript

for PACKAGE in $(ls /packages)
do
    cd /packages/$PACKAGE

    npm install

    npx tsc

    npm publish
done
