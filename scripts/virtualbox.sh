# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

yum -y install bzip2 gcc kernel-devel kernel-headers
cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso