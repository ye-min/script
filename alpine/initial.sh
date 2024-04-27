sed -i '1s/^/#/' /etc/apk/repositories
sed -i '2s/^/#/' /etc/apk/repositories
sed -i '$a https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main' /etc/apk/repositories
sed -i '$a https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community' /etc/apk/repositories

apk update
apk upgrade

apk add --no-cache openssh
ssh-keygen -A
sed -i '$a PermitRootLogin yes' /etc/ssh/sshd_config
sed -i '$a PasswordAuthentication yes' /etc/ssh/sshd_config
