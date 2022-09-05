ARG GO_IMAGE=golang
ARG GO_VERSION=1.18-alpine
ARG NODE_IMAGE=node
ARG NODE_VERSION=current-alpine

# Create image for backend
FROM ${GO_IMAGE}:${GO_VERSION} as hb_back

# Specify the dir to run the following commands in relative to the image
WORKDIR /usr/src/app

# Copy data and run Go commands/compiler
COPY ./backend ./
RUN go install github.com/cosmtrek/air@latest && go mod download && go mod verify

COPY docker-entrypoint.sh ./
ENTRYPOINT [ "/usr/src/app/docker-entrypoint.sh" ]

FROM ${NODE_IMAGE}:${NODE_VERSION} as hb_front

WORKDIR /usr/src/app

COPY frontend/node_modules ./

RUN npm i && npm run dev

COPY docker-entrypoint.sh ./
ENTRYPOINT [ "/usr/src/app/docker-entrypoint.sh" ]