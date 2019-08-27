#!/bin/sh

docker build -f Dockerfile --build-arg COMMITHASH=$TRAVIS_REPO_SLUG -t bar .

# Deploying to heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
heroku container:relase web --app $HEROKU_APP_NAME

