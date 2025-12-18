#!/bin/bash

podman build -f dockerfile -t ghcr.io/deepakavanthi/codesmith-arm:latest

podman push ghcr.io/deepakavanthi/codesmith-arm:latest ghcr.io/deepakavanthi/codesmith-arm:latest

# Initiatlize podman machine with mount point
podman machine init --cpus=4 --disk-size=60 --memory=6096 -v "${HOME}/Development":/development

# Start podman machine
podman machine start

# Start priviledged codesmith container with development folder mounted
podman run -i -d -v /development:/development --name codesmith --privileged ghcr.io/deepakavanthi/codesmith-arm:latest

# Start codesmith container with development folder mounted
podman run -i -d -v /development:/development --name codesmith ghcr.io/deepakavanthi/codesmith-arm:latest

# Connect into codesmith container
podman exec -it codesmith zsh

❯ podman run -i -d -p 2222:22 -v /development:/development --name codesmith --privileged ghcr.io/deepakavanthi/codesmith:latest