#!/bin/sh
docker pull gitlab/gitlab-runner:latest
docker build --no-cache --force-rm $@ -t startext/gitlab-runner-gradle:latest .
echo For uploading image to docker docker hub execute:
echo $ docker push startext/gitlab-runner-gradle
echo
echo For uploading image to local repository execute:
echo $ docker tag startext/gitlab-runner-gradle registry.stx-tomsk:5000/startext/gitlab-runner-gradle
echo $ docker push registry.stx-tomsk:5000/startext/gitlab-runner-gradle
