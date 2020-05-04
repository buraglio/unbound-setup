#!/bin/bash

/bin/echo "This script will install unbound. It is meant to be run on Ubuntu but may work on Debiani. I don't really write code, so use this script Use at your own risk"

/usr/bin/apt-get install unbound 
/bin/mv -v /etc/unbound /etc/unbound.dist
/bin/mkdir /etc/unbound
/bin/mv -v * /etc/unbound/

sudo -u unbound unbound-control-setup

/bin/echo "Unbound should be installed. Edit /etc/unbound.conf and add your address space and IP addresses as noted in the file"

/bin/echo "then run /bin/systemctl restart unbound"
/bin/echo "and /bin/systemctl status unbound"
