#!/bin/bash

docker login -u faheemjailor -p $DOCKER_PASSWORD

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh'chmod +x build.sh'
       sh'./build.sh'

        docker tag test faheemjailor/dev
        docker push faheemjailor/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then
        sh'chmod +x build.sh'
        sh'./build.sh'

        docker tag test faheemjailor/prod
        docker push faheemjailor/prod

else
        echo "failed"
fi
