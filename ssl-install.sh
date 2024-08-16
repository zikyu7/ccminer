#!/bin/bash

OPENSSL_VERSION=$(openssl version)
if [[ $OPENSSL_VERSION == *"OpenSSL 1.1.1m"* ]]; then
    sudo DEBIAN_FRONTEND=noninteractive echo 'OpenSSL already compiled to the correct version' ;
else
    cd /home/vagrant
	mkdir build
	mkdir build/openssl
	wget https://www.openssl.org/source/openssl-1.1.1m.tar.gz
	wget https://www.openssl.org/source/openssl-1.1.1m.tar.gz.sha256
	tar -zxf openssl-1.1.1m.tar.gz --directory build/openssl
	cd build/openssl/openssl-1.1.1m/
	./config --prefix=/opt/openssl --openssldir=/opt/openssl/ssl
	make
	sudo make install

	sudo mv /usr/bin/openssl /usr/bin/openssl.old
	sudo mv /usr/bin/c_rehash /usr/bin/c_rehash.old
	sudo ln -s /opt/openssl/bin/openssl /usr/bin/openssl
	sudo ln -s /opt/openssl/bin/c_rehash /usr/bin/c_rehash
	sudo touch /etc/profile.d/openssl.sh
	sudo chmod +x /etc/profile.d/openssl.sh

	sudo tee -a /etc/profile.d/openssl.sh > /dev/null <<EOT
#!/bin/sh
export LD_LIBRARY_PATH=/opt/openssl/lib:${LD_LIBRARY_PATH}
EOT
	echo "Updating configs"
	echo "source /etc/profile.d/openssl.sh" | sudo tee -a /etc/bash.bashrc
	echo "source /etc/profile.d/openssl.sh" | sudo tee -a /etc/zsh/zprofile
	
	cd /home/vagrant
	rm openssl-1.1.1m.tar.gz
	rm openssl-1.1.1m.tar.gz.sha256
fi