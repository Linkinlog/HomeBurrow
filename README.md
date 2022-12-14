# HomeBurrow
WebApp to visualize and manage IOT devices written in React, TypeScript, Next.js and Go

# Authors
HomeBurrow was created by mitrerogelio and linkinlog

# Local Development
### Currently local development happens though Docker
- Make edits to .env files first, see # Env variables
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
- `make test` will run `go test ./...`

## Client Commands
- `make client-exec` will run `sh`
- `make npm PKG={XYZ}` will run `npm i {XYZ}`
- `make npx PKG={XYZ}` will run `npx {XYZ}`

## Docker Commands
- `make up` / `make down` will run `docker compose up` / `docker compose down`
- `make duke_nukem` will down all containers, remove all images/containers/volumes assosciated with homeburrow and then rebuild
- `make quietbuild` will rebuild with no output
- `make rebuild` will run `docker compose down && docker compose up --build`
  - Run `export QUIET=true` to daemonize docker compose up

# Env variables
- Currently the .env files live in their respective container folders within docker/
- Duplicate the .env.example files as .env files