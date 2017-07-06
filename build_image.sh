#!/bin/sh
docker pull gitlab/gitlab-runner:latest
docker build --no-cache --force-rm $@ -t startext/gitlab-runner-gradle:latest .
echo For uploading image to docker container exec:
echo $ docker push startext/gitlab-runner-gradle
echo
echo For uploading image to local repository exec:
echo $ docker tag startext/gitlab-runner-gradle localhost:5000/startext/gitlab-runner-gradle
echo $ docker push localhost:5000/startext/gitlab-runner-gradle
