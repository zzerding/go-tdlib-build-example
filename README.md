# tdlib go build package

github actions build tdlig an build src go source .

git push "build" tag github action auto build for you.but You may have to wait 30 minutes.

If you don't want to that long,You can build with docker.
```
cd src
docker pull zzerding/go-build-tdlib
docker --rm -it -v "$PWD":/app zzerding/go-build-tdlib 
cd /app && go build

```