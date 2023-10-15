setup:
	npm i -g nodemon pnpm && go mod download && cd client && pnpm install

server: 
	@nodemon -x go run main.go --signal SIGKILL -e go --verbose

client-dev: 
	cd client && pnpm run dev --host

client-build:
	cd client && pnpm run build

client-lint:
	cd client && pnpm run lint

client-install:
	cd client && pnpm install

go-wa-cli:
	cd cli && go run main.go

app:
	@nodemon -x go run main.go --signal SIGKILL -e go --verbose && cd client && pnpm run dev --host


