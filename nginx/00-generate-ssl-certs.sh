openssl req -new -newkey rsa:4096 -nodes -keyout /etc/nginx/certs/cert.test.key \
-out /tmp/cert.test.csr -subj /CN=.test \
-addext subjectAltName=\
DNS:example.test\
&& openssl x509 -req -in /tmp/cert.test.csr -out /etc/nginx/certs/cert.test.crt \
-CA /etc/nginx/certs/ca/ca.pem -CAkey /etc/nginx/certs/ca/ca.key -CAcreateserial \
-copy_extensions copy -days 3650 -sha256
