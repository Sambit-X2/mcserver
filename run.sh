#!/bin/bash
cd gtnh-2.8/ || exit

# Start server
sh startserver-java9.sh &

# Start tailscale
sudo tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &

# Run autosave loop
watch -n 300 'git add . && git commit -m "autosave" || true && git push origin main'
