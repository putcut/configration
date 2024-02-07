# Setup
## Ubuntu on Windows (WSL2)
Ubuntu 22.04 LTS

### とりあえずupdate
```
sudo apt update
sudo apt upgrade
```

### Git
```
git config --global user.email "putcutpoint@gmail.com"
git config --global user.name "putcut"
```

### GitHub SSH
ssh keyを作る。https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux
```
ssh-keygen -t ed25519 -C "putcutpoint@gmail.com"
```

GitHubへ設定する。https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=webui

### ssh keychain
WSLを殺す。
```
# powershell
wsl --shutdonw
```

keychain install
```
sudo apt install keychain
```

設定は`.bashrc`を反映すればOK。

### GitHub CLI install
https://github.com/cli/cli/blob/trunk/docs/install_linux.md

入れたら認証しておく。WSL Ubuntuだとブラウザが開けないのでPATで。
```
gh auth login
```

### ghq/peco
#### Go install
https://go.dev/doc/install
```
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
rm go1.22.0.linux-amd64.tar.gz
```

PATHを通す
```
# .profile
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

```
go version
```

#### ghq/peco install
```
# peco
wget https://github.com/peco/peco/releases/download/v0.5.7/peco_linux_386.tar.gz
tar xzvf peco_linux_386.tar.gz
cd peco_linux_386/
sudo cp peco /usr/local/bin
cd ..
peco --version
rm peco_linux_386.tar.gz
rm -rf peco_linux_386/

# ghq
go install github.com/x-motemen/ghq@latest
```

設定は`.bashrc`を反映すればOK。
