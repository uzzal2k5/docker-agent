ARG JENKINS_AGENT_TAG=latest-jdk11
FROM jenkins/agent:${JENKINS_AGENT_TAG}
ARG DOCKER_VERSION=20.10.7
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz\
 && tar xzvf docker-${DOCKER_VERSION}.tgz --strip 1
USER root
RUN mv docker /usr/local/bin/ && rm docker-${DOCKER_VERSION}.tgz
