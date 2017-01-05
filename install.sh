#!/bin/sh
mkdir Dropbox
ansible-galaxy install williamyeh.oracle-java
vagrant plugin install vagrant-vbguest
vagrant up
