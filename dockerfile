# Build Stage
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl zsh

# Prepare Container
# githubusercontent has SSL issues with 22.04 
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/7d7b0652944180c8e9167e341ad8fe89/raw/823804ca91211b2f4d205f87ce4cb57e34f36fe9/prep_container.sh | bash

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Terraform
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/716b1c453eb1fc974d38cd1dbb1a5e33/raw/928d4a7eaef3904a72b9b92766db9adafb3d86cb/install_terraform.sh | bash

# Install ZSH Shell
RUN sh -c "$(curl -fsSLk https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powershell
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/1f6f44c5070f0cd1f154fbe751ed91c0/raw/3b6ecdf67ca004ecac61462b5464ab6f50f9ba24/install_powershell.sh | bash