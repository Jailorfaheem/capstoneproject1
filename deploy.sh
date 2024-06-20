#!/bin/bash

# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u faheemjailor01 -p $DOCKER_PASSWORD
    # Tag the image
    docker tag test faheemjailor01/dev

    # Push the image to the Dev Docker Hub repository
    docker push faheemjailor01/dev


elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u faheemjailor01  -p $DOCKER_PASSWORD

   
    # Tag the image
    docker tag test faheemjailor01/prod 

    # Push the image to the Prod Docker Hub repository
    docker push faheemjailor01/prod
fi
