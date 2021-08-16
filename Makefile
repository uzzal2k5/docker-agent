#Dockerfile vars
JENKINS_AGENT_TAG=latest-jdk11
DOCKER_VERSION=20.10.7
TAG=jdk11
#vars
IMAGE_NAME=docker-agent
DOCKER_REPO=uzzal2k5
AGENT_IMG=${DOCKER_REPO}/${IMAGE_NAME}:${TAG}

.PHONY: help build push all

help:
	    @echo "Makefile Arguments:"
	    @echo ""
	    @echo "JENKINS_AGENT_TAG - Jenkins Agent Docker Image Tag"
	    @echo "DOCKER_VERSION - Docker Cli Version"
	    @echo ""
	    @echo "Makefile Commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build --pull --build-arg JENKINS_AGENT_TAG=${JENKINS_AGENT_TAG} --build-arg DOCKER_VERSION=${DOCKER_VERSION} -t ${AGENT_IMG} .

push:
	  	@docker push ${AGENT_IMG}

all: build push