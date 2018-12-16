# Generate own Root Certificate Authority

> openssl genrsa -des3 -out ownCA.key 2048

> openssl req -x509 -new -nodes -key ownCA.key -sha256 -days 1825 -out ownCA.crt

# Install own Root Certificate Authority to local machine (ubuntu) and browsers

> mkdir /usr/share/ca-certificates/own/ownCA.crt

> sudo dpkg-reconfigure ca-certificates

> sudo update-ca-certificates

# Generate self signed Certificate Authority for you site

> openssl genrsa -out gitlab.company.com.key 2048

> openssl req -new -key gitlab.company.com.key -out gitlab.company.com.csr

# Create ext config file

The config file is needed to define the Subject Alternative Name (SAN) extension

```bash
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = gitlab.company.com
DNS.2 = gitlab.company.com.192.168.1.5.xip.io
```

> openssl x509 -req -in gitlab.company.com.csr -CA ownCA.crt -CAkey ownCA.key -CAcreateserial \
-out gitlab.company.com.crt -days 1825 -sha256 -extfile gitlab.company.com.ext