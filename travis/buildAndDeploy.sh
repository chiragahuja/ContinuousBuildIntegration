#!/bin/sh
set -x
docker build --build-arg COMMITHASH=$TRAVIS_COMMIT -t bar .

# Deploying to heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME --arg COMMITHASH=$TRAVIS_COMMIT
heroku container:release web --app $HEROKU_APP_NAME


