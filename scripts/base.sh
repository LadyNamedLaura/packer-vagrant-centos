

mkdir '/home/vagrant/.ssh'
curl 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' > /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant '/home/vagrant/.ssh'
chmod 700 '/home/vagrant/.ssh'
chmod 600 '/home/vagrant/.ssh/authorized_keys'