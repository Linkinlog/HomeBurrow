ARG GO_IMAGE=golang
ARG GO_VERSION=1.18-alpine
ARG NODE_IMAGE=node
ARG NODE_VERSION=16.17.0-alpine

# Create image for backend
FROM ${GO_IMAGE}:${GO_VERSION} as go_back

# Specify the dir to run the following commands in relative to the image
WORKDIR /usr/src/app

# Copy Go configs and run Go commands/compiler

COPY backend/go.* ./

RUN go mod download && go mod verify

COPY ./backend .
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]
