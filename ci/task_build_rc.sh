#!/bin/sh

set -e

VERSION=$(cat version/number)
ARTIFACT=$(pwd)/build-artifacts/simple-go-web-app-$VERSION

cp pipeline/Dockerfile build-artifacts/

# application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder
# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/cloudfoundry-community/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/cloudfoundry-community/simple-go-web-app/

go build ./...
cp simple-go-web-app $ARTIFACT
