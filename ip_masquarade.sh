#!/bin/sh

if [ ! $# -eq 1 ]; then
    echo -n "Usage: "
    echo "$0 <interface: eth0,...>"
    exit 0
fi

echo sudo sysctl net.ipv4.ip_forward=1
echo sudo iptables -t nat -A POSTROUTING -o $1 -j MASQUERADE
echo
read -p "Execute the commands above (type y to confirm)? " confirmation 

if [ "$confirmation" = "y" ]; then
     echo $ sudo sysctl net.ipv4.ip_forward=1
     sudo sysctl net.ipv4.ip_forward=1

     echo $ sudo iptables -t nat -A POSTROUTING -o $1 -j MASQUERADE
     sudo iptables -t nat -A POSTROUTING -o $1 -j MASQUERADE

     sudo iptables -t nat -L --line-numbers
fi

