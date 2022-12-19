#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install FRP
curl -LO https://github.com/fatedier/frp/releases/download/v0.46.0/frp_0.46.0_linux_amd64.tar.gz
tar -xf frp_0.46.0_linux_amd64.tar.gz

# Configuare (ServerB) as Private Server
sed -i -e 's/server_addr = 127.0.0.1/server_addr = 192.168.33.11/g' /home/vagrant/frp_0.46.0_linux_amd64/frpc.ini

