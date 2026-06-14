#!/bin/zsh
cd "$(dirname "$0")"
echo "Starting PhoneFix Pro at http://127.0.0.1:5174/index.html?v=32"
echo "Keep this Terminal window open while testing."
python3 -m http.server 5174 --bind 127.0.0.1
