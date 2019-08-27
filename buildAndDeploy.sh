#!/bin/sh
docker build -f Dockerfile --build-arg COMMITHASH=$TRAVIS_REPO_SLUG $TRAVIS_REPO_SLUG:$TAG .
