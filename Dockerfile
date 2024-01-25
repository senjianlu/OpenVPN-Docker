# 基础镜像为 openvpn
# Docker Hub: https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn/
FROM curve25519xsalsa20poly1305/openvpn

# 维护者信息
LABEL maintainer="Rabbir admin@cs.cheap"

# Docker 内用户切换到 root
USER root

# 启动命令
ENTRYPOINT ["entrypoint.sh"]