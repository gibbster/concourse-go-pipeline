#!/bin/sh

set -e
set -x

VERSION=$(cat version/number)
ARTIFACT=$(pwd)/build-artifacts/simple-go-web-app-$VERSION
BUILD_PATH=$(pwd)

cp pipeline/ci/Dockerfile build-artifacts/

# application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder
# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/cloudfoundry-community/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/cloudfoundry-community/simple-go-web-app/

go build ./...
cp simple-go-web-app $ARTIFACT
cp simple-go-web-app $BUILD_PATH/build-artifacts/simple-web-go-app
