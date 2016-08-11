#!/bin/sh
docker pull gitlab/gitlab-runner:latest
docker build --no-cache --force-rm $@ -t startext/gitlab-runner-gradle:latest .
