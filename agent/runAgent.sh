#!/bin/bash

cd $DIR

unset AGENT_PAT
export DOTNET_VERSION=$(dotnet --version)

$DIR/bin/Agent.Listener run &
wait