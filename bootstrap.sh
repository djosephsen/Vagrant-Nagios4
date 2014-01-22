#!/usr/bin/env bash

HOME=/tmp/installs
NAGIOS_URL='http://prdownloads.sourceforge.net/sourceforge/nagios/nagios-4.0.2.tar.gz'
PLUGINS_URL='http://prdownloads.sourceforge.net/sourceforge/nagios/nagios-4.0.2.tar.gz'
mkdir -p ${HOME}
cd ${HOME}

#dev
apt-get update
apt-get install -y make
apt-get install -y daemontools-run

ln -s /etc/services /services

#nagios
groupadd nagios
useradd -m -d /usr/local/nagios -g nagios nagios
wget "${NAGIOS_URL}"
tar -zxvf nagios-4.0.2.tar.gz
cd nagios-4.0.2
./configure && make all && make install install-commandmode install-config
ln -s /usr/local/nagios/etc/ /etc/nagios
cp /vagrant/nagios /service && ln -s /service/nagios /srv/

#plugins
cd ${HOME}


