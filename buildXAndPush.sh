#!/bin/bash

VERSION=$1
if [ -z "$VERSION" ]; then
VERSION="stable"
fi

docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t dottgonzo/fakeh264flux:$VERSION --push .
