#!/bin/sh

npm login --registry ${REGISTRY_URL}

npm install --global typescript

for PACKAGE in $(ls /packages)
do
    cd /packages/$PACKAGE
    
    rm -rf node_modules

    rm -rf dist

    npm install

    npx tsc

    npm publish
done
