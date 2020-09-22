# tdlib go build package

github actions build tdlig an build src go source .

git push "build" tag github action auto build for you.but You may have to wait 30 minutes.

If you don't want to that long,You can build with docker.
```
cd src
docker pull zzerding/go-build-tdlib
docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib  go build
docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib  //if exec run go build
docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib  go run 
docker run --rm -it -v "$PWD":/app  -w /app zzerding/go-build-tdlib  go test

//or you use make
make build
make test
make run
```