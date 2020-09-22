build:
	docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib go build
test:
	docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib go test
run:
	docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib go run