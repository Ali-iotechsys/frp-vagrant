#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install FRP
curl -LO https://github.com/fatedier/frp/releases/download/v0.46.0/frp_0.46.0_linux_amd64.tar.gz
tar -xf frp_0.46.0_linux_amd64.tar.gz

