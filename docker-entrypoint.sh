#!/bin/bash

set -e

CONTAINER=$1

if [[ $CONTAINER == "go" ]]; then
    echo "Compiling Go backend"
    go build -v -o /usr/local/bin/app/api/ ./...
    air
fi

if [[ $CONTAINER == "next" ]]; then
    echo "Spinning up Next.js frontend"
    npm run dev
fi