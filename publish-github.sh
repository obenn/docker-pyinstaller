#!/bin/sh
GITHUB_REPOSITORY=$1
for IMAGE in $(docker images --format '{{.Repository}}:{{.Tag}}' $NAMESPACE); do
    GITHUB_IMAGE=docker.pkg.github.com/$GITHUB_REPOSITORY/$IMAGE
    docker tag $IMAGE $GITHUB_IMAGE
    docker push $GITHUB_IMAGE
done