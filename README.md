# OpenVPN-docker
内置 OpenVPN 的 Docker 镜像构建脚本

## 启动
```bash
docker run --name openvpn -d \
  --device=/dev/net/tun \
  --cap-add=NET_ADMIN \
  -v /root/openvpn:/vpn:ro \
  -e OPENVPN_CONFIG=/vpn/test.ovpn \
  -e SOCKS5_PROXY_PORT=1080 \
  -e PROXY_USER=test \
  -e PROXY_PASS=test \
  -p 1080:1080 \
  rabbir/openvpn:latest
```