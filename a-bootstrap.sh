#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install docker-ce
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant


# Install FRP
curl -LO https://github.com/fatedier/frp/releases/download/v0.46.0/frp_0.46.0_linux_amd64.tar.gz
tar -xf frp_0.46.0_linux_amd64.tar.gz

