echo "Appending mapping '127.0.0.1	example.test' to /etc/hosts"
echo "This step requires sudo privileges"
echo "127.0.0.1	example.test" | sudo tee -a /etc/hosts
