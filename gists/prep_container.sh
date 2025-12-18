#!/usr/bin/env bash

# Upgrade System
apt update && apt upgrade -y

# Install and configure tzdata
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

# Install Dependencies
apt install -y \
wget \
software-properties-common \
curl \
nano \
iproute2 \
apt-transport-https \
ca-certificates \
gnupg \
lsb-release \
openssh-server \
zsh-autosuggestions \
zsh-syntax-highlighting \
git

# Set root password
password=$(tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 10)
user='root'
chpasswd <<<"$user:$password"
echo $password > ~/.rootpass

# Configure SSH
systemctl enable ssh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config


# Configue ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
curl -o ~/.zshrc https://gist.githubusercontent.com/deepakavanthi/5f4767680f7a6d8f6550c0000cbaa3f1/raw/95bd7b8195010db8d95c11b82ac995e9114c16c7/zshrc_config.zsh