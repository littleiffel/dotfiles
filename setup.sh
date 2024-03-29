#!/bin/bash

function showHelp() {
    echo
    echo "Usage:"
    echo "   $0 [OPTION]"
    echo
    echo "Options are intended to be run one-at-a-time; they are listed here in "
    echo "recommended order."
    echo
    echo "  --apt-get-installs    (installs a bunch of useful Ubuntu packages)"
    echo "  --setup-nvim-plugins (manually add vim-plug)"
    echo
    echo
    exit 0
}

if [ -z $1 ]; then
    showHelp
fi

set -eou pipefail
task=$1

try_curl() {
    url=$1
    dest=$2
    command -v curl > /dev/null && curl -fL $url > $dest
}


try_wget() {
    url=$1
    dest=$2
    command -v wget > /dev/null && wget -O- $url > $dest
}


download() {
    echo "Downloading $1 to $2"
    if ! (try_curl $1 $2 || try_wget $1 $2); then
        echo "Could not download $1"
    fi
}

if [ $task == "--apt-get-installs" ]; then
    if ! command -v lazygit &> /dev/null
    then    
	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
        download "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" lazygit.tar.gz
        sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
    fi
    #VSCode
    if [[ -f "/etxc/apt/sources.list.d/vscode.list" ]]; then
	echo "VSCode repo already exists"
    else
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
    	sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    	rm -f packages.microsoft.gpg
    fi
    sudo apt-get update 
    sudo apt install apt-transport-https
    sudo apt-add-repository -y ppa:fish-shell/release-3 
    sudo apt-get -y install \
        htop \
        neovim \
        tmux \
        curl \
        wget \
        gpg \
        code \
        autotools-dev \
        automake \
        liblzma-dev \
        fzf \
        fish \
        neofetch

elif [ $task == "--setup-nvim-plugins" ]; then
    dest=~/.local/share/nvim/site/autoload/plug.vim 
    mkdir -p $(dirname $dest)
    download https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim $dest
    echo
    echo "Open nvim and run :PlugInstall"
    echo

elif [ $task == "--install-ag" ]; then
    (
        agdir=$HOME/tmp/ag
        rm -rf $agdir
        git clone https://github.com/ggreer/the_silver_searcher.git $agdir
        cd $agdir
        sh ./autogen.sh
        sh ./configure --prefix=$HOME/opt/
        make
        make install
        rm -rf $agdir
    )

else
    showHelp
fi