#!/bin/sh

echo "sudo iptables -F"
sudo iptables -F

echo "\nIptables entries:"
sudo iptables -L --line-numbers
