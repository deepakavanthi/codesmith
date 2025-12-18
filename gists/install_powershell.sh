#!/usr/bin/env bash

# Upgrade System
apt update && apt upgrade -y

# Install and configure tzdata
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

# Install Dependencies
apt install -y wget apt-transport-https software-properties-common curl

# Download the Microsoft repository keys
source /etc/os-release
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys
dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb

# Install PowerShell
apt update && apt install -y powershell