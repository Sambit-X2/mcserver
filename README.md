# mcserver

Every 5 days 

# Starting server
sh startserver.sh  
sh startserver-java9.sh

# Autosave
watch -n 300 'git add . && git commit -m "autosave" || true && git push origin main'

# Tailscale Setup
curl -fsSL https://tailscale.com/install.sh | sh 

tailscale up

sudo tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &