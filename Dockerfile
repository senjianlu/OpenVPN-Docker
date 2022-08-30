# 基础镜像为 openvpn-socks5
# Docker Hub: https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-socks5
# GitHub: https://github.com/curve25519xsalsa20poly1305/docker-openvpn-socks5
FROM curve25519xsalsa20poly1305/openvpn-socks5

# 维护者信息
LABEL maintainer="Rabbir admin@cs.cheap"

# Docker 内用户切换到 root
USER root

# 替换为带 OpenVPN 认证信息文件启动的脚本
COPY script/entrypoint.sh /usr/local/bin/entrypoint.sh

# 启动命令
ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]