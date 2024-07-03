#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u deepanr -p dckr_pat_IOqvbW-SRoP3kEB5tvu1eHXtQNI
    docker tag my-react-app deepanr/dev
    docker push deepanr/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u deepanr -p dckr_pat_IOqvbW-SRoP3kEB5tvu1eHXtQNI
    docker tag my-react-app deepanr/prod 
    docker push deepanr/prod
fi
