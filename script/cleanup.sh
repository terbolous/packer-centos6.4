# Make sure udev doesn't block our network
if grep -q -i "release 6" /etc/redhat-release ; then
    sudo rm -rf /etc/udev/rules.d/70-persistent-net.rules
    sudo mkdir /etc/udev/rules.d/70-persistent-net.rules
    sudo rm -rf /lib/udev/rules.d/75-persistent-net-generator.rules
fi
sudo rm -rf /dev/.udev/
sudo sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-eth0

sudo yum -y clean all

sudo rm -rf /tmp/*
