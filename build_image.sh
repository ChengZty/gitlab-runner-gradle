#!/bin/sh
docker build --no-cache $@ -t startext/gitlab-runner-gradle .
