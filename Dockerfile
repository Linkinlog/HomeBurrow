ARG GO_IMAGE=golang
ARG GO_VERSION=buster
ARG NODE_IMAGE=node
ARG NODE_VERSION=current

# Create image for backend
FROM ${GO_IMAGE}:${GO_VERSION} as hb_server

# Specify the dir to run the following commands in relative to the image
WORKDIR /usr/src/app

# Copy data and run Go commands/compiler
COPY docker-entrypoint.sh /
COPY backend ./
RUN go mod download \
    && go mod verify \
    && go install github.com/cosmtrek/air@latest \
    && chmod u+x /docker-entrypoint.sh

# ENTRYPOINT [ "tail", "-f", "/dev/null" ]
ENTRYPOINT [ "/docker-entrypoint.sh" ]

FROM ${NODE_IMAGE}:${NODE_VERSION} as hb_client

WORKDIR /usr/src/app

COPY docker-entrypoint.sh /

COPY ["frontend/package.json", "frontend/package-lock.json", "/usr/src/app/"]

RUN npm install \
    && chmod u+x /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]