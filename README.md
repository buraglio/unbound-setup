# unbound-setup
### A very basic set of unbound configurations and a crude shell script to install them. 

Use:

`sudo ./unbound-setup.sh`

Basically all the shell script does is the following:

`/usr/bin/apt-get install unbound`
`/bin/mv -v /etc/unbound /etc/unbound.dist`
`/bin/mkdir /etc/unbound`
`/bin/mv -v * /etc/unbound/`

`sudo -u unbound unbound-control-setup`

### Once installed, you must edit /etc/unbound.conf and add your address space and IP addresses as noted in the file
then run /bin/systemctl restart unbound and /bin/systemctl status unbound
