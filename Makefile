SERVER_COMMAND := docker compose exec server
CLIENT_COMMAND := docker compose exec client

ifdef PKG
	CMD += $(PKG)
endif

ifdef GO
	CMD += $(GO)
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

tailwind:
	$(CLIENT_COMMAND) npx tailwindcss -i ./styles/input.css -o ./styles/output.css --watch	

rebuild:
	docker compose down && docker compose up --build

.PHONY: server-exec go get tidy client-exec npm npx tailwind rebuild
