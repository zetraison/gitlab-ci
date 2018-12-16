#!/usr/bin/env bash

# Generate own Root Certificate Authority

openssl genrsa -des3 -out ownCA.key 2048

openssl req \
    -x509 \
    -new \
    -nodes \
    -key ownCA.key \
    -sha256 \
    -days 1825 \
    -out ownCA.crt

# Install own Root Certificate Authority to local machine (ubuntu) and your browsers

mkdir /usr/share/ca-certificates/own/
cp ownCA.crt /usr/share/ca-certificates/own/
sudo dpkg-reconfigure ca-certificates
sudo update-ca-certificates