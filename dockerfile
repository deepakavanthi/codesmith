# Build Stage
FROM ubuntu:24.04

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl git zsh sudo

# Install ZSH Shell
RUN sh -c "$(curl -fsSLk https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Prepare Container
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/19c1ad645658dcf634a8bc7460b8ab62/raw/c85928abb8eab8eecb7cf96bb9320ba729d8cd03/prep_container.sh | bash

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Terraform
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/716b1c453eb1fc974d38cd1dbb1a5e33/raw/928d4a7eaef3904a72b9b92766db9adafb3d86cb/install_terraform.sh | bash

# Install Powershell
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/1f6f44c5070f0cd1f154fbe751ed91c0/raw/dda53583e07254361c3ed7230f237e563dab5871/install_powershell.sh | bash

# Install OpenTofu
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/cc41858442899aed01b4ab188fd022af/raw/7359cf084e55e401149e591e48dd44c6561d441a/install_opentofu.sh | bash

# Install Ansible
RUN curl -sLk https://gist.githubusercontent.com/deepakavanthi/900e385b248b21b9df58c31d55447988/raw/c767d17d4a8734d9e10c78b88dee4e2a9160c581/install_ansible.sh | bash