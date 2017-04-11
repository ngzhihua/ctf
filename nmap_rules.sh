#!/bin/sh

echo "nmap -sP"
nmap -sP 192.168.0.0/24

echo "nmap - open ports"
nmap 192.168.0.0/24

echo "nmap - identify os"
sudo nmap -O 192.168.0.0/24

echo "nmap - identify hostnames"
nmap -sL 192.168.0.0/24

echo "nmap - identify os"
sudo nmap -O 192.168.0.0/24

echo "nmap - TCP Syn UDP Scan"
sudo nmap -sS -sU -PN 192.168.0.123

echo "nmap - TCP Syn UDP Scan (Port range)"
sudo nmap -sS -sU -PN -p 1-65535 192.168.0.123

echo "nmap - TCP Connect Scan"
nmap -sT 192.168.0.123


echo "nmap - Fast scan"
nmap -T4 -F 192.168.0.123
