#!/bin/bash
pkg update && pkg upgrade
pkg install ssh -y
pkg install ttyd -y
ttyd -p 8080 -m 3 bash -x
echo "Open in new Terminal and type: ssh -R 80:127.0.0.1:8080 serveo.net"
