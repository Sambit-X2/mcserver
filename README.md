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

Chrome

docker run -d \
  --name=chrome \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e CHROME_CLI=https://www.linuxserver.io/ `#optional` \
  -p 3000:3000 \
  -p 3001:3001 \
  -v /path/to/config:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  lscr.io/linuxserver/chrome:latest

  docker exec -it container_name bash