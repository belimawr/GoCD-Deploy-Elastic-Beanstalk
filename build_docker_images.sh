#!/bin/bash -x
docker build -t gocd-example-build-and-test -f Dockerfiles/build_and_test .
docker build -t gocd-example-deploy -f Dockerfiles/deploy .
