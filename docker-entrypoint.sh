#!/bin/bash

set -e

CONTAINER=$1

if [[ $CONTAINER == "server" ]]; then
    echo "Compiling Go backend"
    air
fi

if [[ $CONTAINER == "client" ]]; then
    echo "Spinning up Next.js frontend"
    npm i package.json
    npm run dev
fi

run-parts /docker-entrypoint-init.d