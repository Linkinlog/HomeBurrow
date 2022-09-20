#!/bin/bash

set -e

CONTAINER=$1

if [[ $CONTAINER == "go" ]]; then
    echo "Compiling Go backend"
    air
fi

if [[ $CONTAINER == "next" ]]; then
    echo "Spinning up Next.js frontend"
    npm i package.json
    npm run dev
fi