#!/bin/bash

docker login -u faheemjailor1 -p $DOCKER_PASSWORD

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh'chmod +x build.sh'
       sh'./build.sh'

        docker tag test faheemjailor1/dev
        docker push faheemjailor1/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then
        sh'chmod +x build.sh'
        sh'./build.sh'

        docker tag test faheemjailor1/prod
        docker push faheemjailor1/prod

else
        echo "failed"
fi
