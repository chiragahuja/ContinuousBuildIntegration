#!/bin/sh

docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .

