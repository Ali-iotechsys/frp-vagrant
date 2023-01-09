#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install docker-ce
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant

# Install FRP
curl -LO https://github.com/fatedier/frp/releases/download/v0.46.0/frp_0.46.0_linux_amd64.tar.gz
tar -xf frp_0.46.0_linux_amd64.tar.gz

# Configuare (B1) as Private Server
tee /home/vagrant/frp_0.46.0_linux_amd64/frpc.ini << END
[common]
server_addr = 192.168.33.10
server_port = 7000

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6001

[web01]
type = tcp
local_ip = 127.0.0.1
local_port = 55555
remote_port = 55555

[web02]
type = tcp
local_ip = 127.0.0.1
local_port = 9000
remote_port = 9000

[web03]
type = tcp
local_ip = 127.0.0.1
local_port = 9443
remote_port = 9443
END

# Install simple webserver
mkdir /home/vagrant/src
echo "I am node $HOSTNAME" > /home/vagrant/src/index.html

