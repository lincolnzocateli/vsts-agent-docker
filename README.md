### VSTS Agent Pools Docker Image

This repository contains: 
- `Scripts` definitions for [Build vsts agent pool](https://github.com/lincolnzocateli/vsts-agent-pool/tree/master/agent) and 
- `Dockerfile` definitions for [Build vsts agent pool](https://github.com/lincolnzocateli/vsts-agent-pool/tree/master/docker) Docker images.

[![Downloads from Docker Hub](https://img.shields.io/docker/pulls/lzocateli/vsts-agent-pool.svg)](https://registry.hub.docker.com/u/lzocateli/vsts-agent-pool)
[![Stars on Docker Hub](https://img.shields.io/docker/stars/lzocateli/vsts-agent-pool.svg)](https://registry.hub.docker.com/u/lzocateli/vsts-agent-pool) 
[![](https://images.microbadger.com/badges/image/lzocateli/vsts-agent-pool.svg)](https://microbadger.com/images/lzocateli/vsts-agent-pool "Get your own image badge on microbadger.com")

## Supported

- [`agent-scripts` (*agent-pool/scripts*)](https://github.com/lincolnzocateli/vsts-agent-pool/blob/master/agent)
- [`agent-docker` (*agent-pool/Dockerfile*)](https://github.com/lincolnzocateli/vsts-agent-pool/blob/master/docker/Dockerfile)

## Configuration

For `agent`, you need to set these environment variables:

* `VS_TENANT` - Required. The VSTS tenant, the value that goes before visualstudio.com
* `AGENT_PAT` - Required. The personal access token from VSTS. 
* `AGENT_POOL` - The agent pool. Optional. Default value: `Default`
* `AGENT_NAME` - Name of agent to be displayed in VSTS Agent Pool

## Running

On a Mac, use Docker for Mac, or directy on Linux, run in bash:

To start a container in detached mode:

````bash
docker run --name my-agent-pool \
           -d \
           -e VS_TENANT=your tenant \
           -e AGENT_PAT=xxxxxxxx \
           -e AGENT_POOL=your vsts agent pool \
           -e AGENT_NAME=$(uname -n) \
           --volume=/var/run/docker.sock:/var/run/docker.sock \
           -v /home/myvolume:/vsts-agent-pool/_works \
           lzocateli/vsts-agent-pool:tag
````

To start a container in foreground mode:

````bash
docker run --name my-agent-pool \
           -ti \
           -e VS_TENANT=your tenant \
           -e AGENT_PAT=xxxxxxxx \
           -e AGENT_POOL=your vsts agent pool \
           -e AGENT_NAME=$(uname -n) \
           --rm \
           --volume=/var/run/docker.sock:/var/run/docker.sock \
           -v /home/myvolume:/vsts-agent-pool/_works \
           lzocateli/vsts-agent-pool:tag
````

The -v parameter indicates that a volume is being mounted on the container host, 
so it will be possible to keep the _works folder even if the container is not running.
If you do not want to use a volume on the host, just remove the -v line from docker run.

## Maintainers

* [email: Lincoln Zocateli](mailto:lincoln@nuuve.com.br), [facebook: lincoln.zocateli](https://www.facebook.com/lincoln.zocateli), [twitter: @lincolnzocateli](https://twitter.com/lincolnzocateli)

## License

This software is open source, licensed under the Apache License, Version 2.0.
See [LICENSE](https://github.com/lincolnzocateli/vsts-agent-pool/blob/master/LICENSE) for details.
Check out the terms of the license before you contribute, fork, copy or do anything
with the code. If you decide to contribute you agree to grant copyright of all your contribution to this project, and agree to
mention clearly if do not agree to these terms. Your work will be licensed with the project at Apache V2, along the rest of the code.
