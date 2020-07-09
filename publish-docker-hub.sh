#!/bin/sh
DOCKER_HUB_NAMESPACE=$1
for IMAGE in $(docker images --format '{{.Repository}}:{{.Tag}}' pyinstaller-linux); do
    DOCKER_HUB_IMAGE=$DOCKER_HUB_NAMESPACE/$GITHUB_REPOSITORY/$IMAGE
    docker tag $IMAGE $DOCKER_HUB_IMAGE
    docker push $DOCKER_HUB_IMAGE
done
for IMAGE in $(docker images --format '{{.Repository}}:{{.Tag}}' pyinstaller-windows); do
    DOCKER_HUB_IMAGE=$DOCKER_HUB_NAMESPACE/$GITHUB_REPOSITORY/$IMAGE
    docker tag $IMAGE $DOCKER_HUB_IMAGE
    docker push $DOCKER_HUB_IMAGE
done