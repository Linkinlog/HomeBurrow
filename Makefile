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

server-exec:
	$(SERVER_COMMAND) sh
go:
	$(SERVER_COMMAND) go $(CMD)
get:
	$(SERVER_COMMAND) go get $(CMD)
tidy:
	$(SERVER_COMMAND) go mod tidy

client-exec:
	$(CLIENT_COMMAND) sh
npm:
	$(CLIENT_COMMAND) npm i $(CMD)
	
npx:
	$(CLIENT_COMMAND) npx $(CMD)	

down:
	docker compose down

up:
	docker compose up --build $(QUIET)

rebuild:
	make down && make up

quietbuild:
	make rebuild &>/dev/null &

.PHONY: server-exec go get tidy client-exec npm npx down up rebuild quietbuild
