#!/bin/sh

docker pull startext/gitlab-runner-gradle
docker stop gitlab-runner-gradle && docker rm gitlab-runner-gradle
docker run -d --name gitlab-runner-gradle --restart always --volumes-from gitlab-runner-config startext/gitlab-runner-gradle
docker exec -ti gitlab-runner-gradle gitlab-runner -v
