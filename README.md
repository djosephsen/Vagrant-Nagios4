Vagrant-Nagios4
===============

A Nagios 4 Vagrant file and bootstrap that builds from the precise32 image provided by http://www.vagrantup.com/

## Why ##

I'm suspicious by nature, and find it hard to "just download" random peoples
vm's. So I tend to make my own vagrant config that works against the base boxes
provided by the vagrantup guys instead. 


## Ussage ##

Clone this repo, cd into it, and run: 
	
	vagrant box add precise32 http://files.vagrantup.com/precise32.box
	vagrant up

