#!/bin/zsh
cd "$(dirname "$0")"
echo "Starting latest PhoneFix Pro at http://127.0.0.1:5175/index.html?v=47"
echo "Use this latest test link if port 5174 is still showing an old cached app."
echo "Keep this Terminal window open while testing."
python3 -m http.server 5175 --bind 127.0.0.1
