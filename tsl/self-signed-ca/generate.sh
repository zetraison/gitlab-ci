#!/usr/bin/env bash

openssl genrsa -out gitlab.company.com.key 2048

openssl req -new -key gitlab.company.com.key -out gitlab.company.com.csr

openssl x509 \
    -req \
    -in gitlab.company.com.csr \
    -CA ../own-root-ca/ownCA.crt \
    -CAkey ../own-root-ca/ownCA.key \
    -CAcreateserial \
    -out gitlab.company.com.crt \
    -days 1825 \
    -sha256 \
    -extfile gitlab.company.com.ext
