# HomeBurrow
WebApp to visualize and manage IOT devices written in React, TypeScript, Next.js and Go


# Local Development
### Currently local development happens though Docker
- Run `docker compose up` to spin up the backend and frontend in containers
- Frontend runs on port 8086
- Backend runs on port 8085

# Make Commands
### In order to simplify docker and various commands that need to be ran during development we have made some make commands
## Server Commands
- `make server-exec` will run `sh`
- `make go GO={XYZ}` will run `go {XYZ}`
- `make get PKG={XYZ}` will run `go get {XYZ}`
- `make tidy` will run `go mod tidy`

## Client Commands
- `make client-exec` will run `sh`
- `make npm PKG={XYZ}` will run `npm i {XYZ}`
- `make rebuild` will run `docker compose down && docker compose up --build`
# Authors
HomeBurrow was created by mitrerogelio and linkinlogs