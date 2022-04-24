#!/bin/sh

setup_network() {
    ifconfig br-lan down
    brctl delbr br-lan
    ifconfig eth0 192.168.1.100 up
}

setup_ssh_login() {
    dropbear -F -R -p 22
}

setup_network
setup_ssh_login

