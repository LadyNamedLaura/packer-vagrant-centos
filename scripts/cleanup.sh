
sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-e*
sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-e*

if [ -f '/lib/udev/rules.d/75-persistent-net-generator.rules' ]
then
	rm /etc/udev/rules.d/70-persistent-net.rules
	ln -s /dev/null /etc/udev/rules.d/70-persistent-net.rules
	ln -s /dev/null /etc/udev/rules.d/75-persistent-net-generator.rules
fi
yum -y clean all