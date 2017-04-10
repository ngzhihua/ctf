#!/bin/sh

if [ ! $# -eq 2 ]; then
    echo -n "Usage: "
    echo "$0 <chain:INPUT|OUTPUT|FORWARD> <action:ACCEPT|DROP>"
    exit 0
fi

echo $ sudo iptables -P $1 $2
sudo iptables -P $1 $2

echo $ sudo iptables -L --line-numbers
sudo iptables -L --line-numbers
