#!/bin/sh

set -e

ls -la
VERSION=$(cat version/number)
cat $VERSION
pwd

# application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder
# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/cloudfoundry-community/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/cloudfoundry-community/simple-go-web-app/

go build ./...
ls -la
pwd
