VSTS Agent Pools and Deployment Pools Docker Image
==================================================

This repository contains: 
- `Dockerfile` definitions for [Build Agent/agent-pools](https://github.com/lincolnzocateli/vsts-agent-docker/tree/master/agent-pools) and 
- `Dockerfile` definitions for [Deployment Agent/agent-deployment](https://github.com/lincolnzocateli/vsts-agent-docker/tree/master/agent-deployment) Docker images.

[![Downloads from Docker Hub](https://img.shields.io/docker/pulls/lzocateli/vsts-agent-ci.svg)](https://registry.hub.docker.com/u/lzocateli/vsts-agent-ci)
[![Stars on Docker Hub](https://img.shields.io/docker/stars/lzocateli/vsts-agent-ci.svg)](https://registry.hub.docker.com/u/lzocateli/vsts-agent-ci) [![](https://images.microbadger.com/badges/image/lzocateli/vsts-agent-ci.svg)](https://microbadger.com/images/lzocateli/vsts-agent-ci "Get your own image badge on microbadger.com")

## Supported

- [`agent-build` (*agent-pools/Dockerfile*)](https://github.com/lincolnzocateli/vsts-agent-docker/blob/master/agent-pools/Dockerfile)
- [`agent-deployment` (*agent-deployment/Dockerfile*)](https://github.com/lincolnzocateli/vsts-agent-docker/blob/master/agent-deployment/Dockerfile)

## Configuration

For `agent-pools`, you need to set these environment variables:

* `AGENT_PAT` - Required. The personal access token from VSTS. 
* `VS_TENANT` - Required. The VSTS tenant, the value that goes before visualstudio.com
* `AGENT_POOL` - The agent pool. Optional. Default value: `Default`

## Running

On a Mac, use Docker for Mac, or directy on Linux, run in bash:

````bash
docker run --name vsts-agent-ci 
           -ti 
           -e VS_TENANT=$VS_TENANT 
           -e AGENT_PAT=$AGENT_PAT 
           -e DOCKER_USERNAME=$DOCKER_USERNAME 
           -e DOCKER_PASSWORD=$DOCKER_PASSWORD 
           -e DOCKER_SERVER=$DOCKER_SERVER 
           --rm 
           --volume=/var/run/docker.sock:/var/run/docker.sock 
           lzocateli/vsts-agent-ci
````

If you build using Docker containers, be careful with volume mounts, as they
will be mounted on the Docker host, not on the agent's file system. For that to
work as expected mount `/agent/_works` from the host to the agent container,
adding to docker run `-v /agent/_works:/agent/_works`.

## Maintainers

* [email: Lincoln Zocateli](mailto:lincoln@nuuve.com.br), [facebook: lincoln.zocateli](https://www.facebook.com/lincoln.zocateli), [twitter: @lincolnzocateli](https://twitter.com/lincolnzocateli)

## License

This software is open source, licensed under the Apache License, Version 2.0.
See [LICENSE](https://github.com/lincolnzocateli/vsts-agent-docker/blob/master/LICENSE) for details.
Check out the terms of the license before you contribute, fork, copy or do anything
with the code. If you decide to contribute you agree to grant copyright of all your contribution to this project, and agree to
mention clearly if do not agree to these terms. Your work will be licensed with the project at Apache V2, along the rest of the code.
