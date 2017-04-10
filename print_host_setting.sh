#!/bin/sh

echo "\nIP addresses:"
sudo ifconfig | grep "inet addr" | sed -e 's/^[ \t]*//'

echo "\nRouting table:"
sudo route -n

echo "\nForwarding parameter:"
sysctl -q net.ipv4.ip_forward

echo "\nIptables entries:"
sudo iptables -L --line-numbers
