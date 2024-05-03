#!/bin/bash

# 远程服务器的IP地址或域名
remote_host="your_server_ip_or_domain"

# 本地监听端口
local_port=11112

# 远程Shadowsocks端口
remote_port=11111

# autossh隧道命令
autossh_cmd="autossh -M 0 -N -o 'ServerAliveInterval 60' -L ${local_port}:localhost:${remote_port} ${remote_host}"

# 启动隧道
eval ${autossh_cmd}
