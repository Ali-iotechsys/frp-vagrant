#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install docker-ce
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant


# Install FRP
curl -LO https://github.com/fatedier/frp/releases/download/v0.46.0/frp_0.46.0_linux_amd64.tar.gz
tar -xf frp_0.46.0_linux_amd64.tar.gz

# Configuare (A) as Public Server
tee /home/vagrant/frp_0.46.0_linux_amd64/frps_1.ini << END
[common]
bind_address = 127.0.0.1
bind_port = 7001
END

# Another config for other instance of frp server
tee /home/vagrant/frp_0.46.0_linux_amd64/frps_2.ini << END
[common]
bind_address = 127.0.0.1
bind_port = 7002
END
