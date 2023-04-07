#!/bin/sh
echo "Hello, ${USER}"
echo "Starting setup dotfiles!"
if ! [ -x "$(command -v brew)" ]; then
    echo "homebrew is not exist!"
    echo "\nInstalling Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && 	   ./setup.sh
fi

brew_install() {
    echo "\nInstalling $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
	return 1
    else
        brew install $1
	./setup.sh
	return 0
    fi
}

file_exist() {
    echo "\n checking $1"
    if [ -f "$1" ]; then
	echo "$1 is exist"
	return 1
	else
	    echo "$1 is not exist"
	    return 0
    fi
}

brew_install "git"
brew_install "iterm2"
if brew_install "neovim"; then
    echo "\nInstalling Vim-Plug"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';
    else
        echo "Vim-Plug is already installed"
fi

brew_install "nvm"

NVIM=~/.config/nvim

if ! [ -d $NVIM ]; then
  mkdir $NVIM
fi

file_exist ~/.config/nvim/init.vim

ZSHRC=~/.zshrc
ZPROFILE=~/.zprofile

if file_exist $ZSHRC; then
  echo "Copying $ZSHRC"
  cp ./.zshrc $ZSHRC
fi

if file_exist $ZPROFILE; then
  echo "Copying $ZPROFILE"
  cp ./.zprofile $ZPROFILE
fi

brew_install "fig"

fig source
fig doctor

echo "Setup finished, Happy Hacking!"


