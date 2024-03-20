#!/bin/bash
echo "Generating root CA certificate"
docker run -v ./../ca:/ca alpine/openssl genrsa -out /ca/ca.key 4096
docker run -v ./../ca:/ca alpine/openssl req -new -x509 -days 3650 -key /ca/ca.key -out /ca/ca.pem -config /ca/ca_config.cnf
cat ../ca/ca.key ../ca/ca.pem > ../ca/mitmproxy-ca.pem
