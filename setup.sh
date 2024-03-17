#!/bin/sh
echo "Hello, ${USER}"
echo "Starting setup dotfiles!"

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
    echo "\nChecking $1"
    if [ -f "$1" ]; then
	echo "$1 is exist"
	return 1
	else
	    echo "$1 is not exist"
	    return 0
    fi
}

if file_exist $ZSHRC; then
  echo "Copying $ZSHRC"
  cp ./.zshrc $ZSHRC
fi

if file_exist $ZPROFILE; then
  echo "Copying $ZPROFILE"
  cp ./.zprofile $ZPROFILE
fi

if ! [ -x "$(command -v brew)" ]; then
    echo "homebrew is not exist!"
    echo "\nInstalling Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && ./setup.sh
fi

brew_install "git"
brew_install "warp"
brew_install "nvm"
brew_install "neofetch"
brew_install "rectangle"

if brew_install "neovim"; then
    echo "\nInstalling Vim-Plug"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';
    else
        echo "\nVim-Plug is already installed"
fi


NEOFETCH=~/.config/neofetch/
NVIM=~/.config/nvim/
ZSHRC=~/.zshrc
ZPROFILE=~/.zprofile

if ! [ -d $NEOFETCH ]; then
  mkdir $NEOFETCH
fi

if file_exist ~/.config/neofetch/config.conf; then
  echo "Copying $ZSHRC Config"
  cp ./.config/neofetch/config.conf $NEOFETCH
fi

if ! [ -d $NVIM ]; then
  mkdir $NVIM
fi

if file_exist ~/.config/nvim/init.vim; then
  echo "Copying $NVIM Config"
  cp ./.config/nvim/init.vim ~/.config/nvim/
fi

echo "Setup finished, Happy Coding!"
