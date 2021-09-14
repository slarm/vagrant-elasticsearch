#!/bin/bash

# Install Elasticsearch
wget -q https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.14.1-amd64.deb
sudo dpkg -i elasticsearch-7.14.1-amd64.deb

# Install Kibana
wget -q https://artifacts.elastic.co/downloads/kibana/kibana-7.14.1-amd64.deb
sudo dpkg -i kibana-7.14.1-amd64.deb

# Enable Elastic at system startup
sudo systemctl enable elasticsearch
sudo systemctl enable kibana

# Configure Elasticsearch
sudo echo 'network.host: 0.0.0.0' >> /etc/elasticsearch/elasticsearch.yml
sudo echo 'discovery.type: single-node' >> /etc/elasticsearch/elasticsearch.yml

# Configure Kibana
sudo echo 'server.host: 0.0.0.0' >> /etc/kibana/kibana.yml

# Restart services
sudo systemctl restart elasticsearch
sudo systemctl restart kibana
