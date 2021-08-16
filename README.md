# Jenkins docker-agent
Customize to enable docker client into official [ jenkins/agent:latest-jdk11 ](https://hub.docker.com/r/jenkins/agent/)

## Image Build

Build with arguments or without argument.
- default 
        
        make build
- Using jenkins/agent tag 
        
        make build JENKINS_AGENT_TAG=latest-jdk11
- another kubectl version make 
        
        build DOCKER_VERSION=20.10.7
- both modified versions 
        
        make build JENKINS_AGENT_TAG=latest-jdk11 DOCKER_VERSION=20.10.7
