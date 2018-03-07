#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mkdir -p ~/Banano
if [ ! -f ~/Banano/config.json ]; then
  echo "Config File not found, adding default."
  cp /usr/share/banano/config.json ~/Banano/
fi
/usr/bin/bananode --daemon
