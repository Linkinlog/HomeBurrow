SERVER_COMMAND := docker compose exec server
CLIENT_COMMAND := docker compose exec client

ifdef PKG
	CMD += $(PKG)
endif

ifdef GO
	CMD += $(GO)
endif

ifdef QUIET
	QUIET = -d
endif

# Server Commands
server-exec:
	$(SERVER_COMMAND) sh
go:
	$(SERVER_COMMAND) go $(CMD)
get:
	$(SERVER_COMMAND) go get $(CMD)
tidy:
	$(SERVER_COMMAND) go mod tidy
test:
	$(SERVER_COMMAND) go test ./...

# Client Commands
client-exec:
	$(CLIENT_COMMAND) sh

# Node Modules
npm:
	$(CLIENT_COMMAND) npm i $(CMD)
	
npx:
	$(CLIENT_COMMAND) npx $(CMD)	

tailwind:
	$(CLIENT_COMMAND) npx tailwindcss -i ./styles/input.css -o ./styles/output.css --watch	

# DevOps Commands
rebuild:
	docker compose down && docker compose up --build

down:
	docker compose down

up:
	docker compose up --build $(QUIET)

rebuild:
	make down && make up

quietbuild:
	make rebuild &>/dev/null &

.PHONY: server-exec go get tidy test client-exec npm npx tailwind down up rebuild quietbuild