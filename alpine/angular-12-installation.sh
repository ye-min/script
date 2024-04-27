apk add python3 make g++ gcc gnupg libstdc++ curl bash
cd /opt
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
chmod u+x n
N_NODE_MIRROR=https://unofficial-builds.nodejs.org/download/release ./n --arch x64-musl 14.21.3

npm install -g @angular/cli@12

ng version
