#!/usr/bin/env bash

apt-get update

# install python
apt-get install python3.7
apt-get install python3-venv

sudo apt install python3-venv python3-pip

# install news-release
pip3 install news-please

## install elastic-search and kibana
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get install apt-transport-https
sudo apt update
sudo apt install elasticsearch
sudo apt-get install kibana

sudo systemctl start elasticsearch
sudo systemctl start kibana