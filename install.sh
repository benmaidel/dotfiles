#!/bin/bash


cp ./.gitmessage ~
cp ./.gitconfig ~

# powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git nerd-fonts
cd nerd-fonts
./install.sh
cd .. && rm -rf nerd-fonts

#meslo font

# oh-my-zsh & plugins
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
cp ./.zshrc ~

font_dir="$HOME/.local/share/fonts"
mkdir -p $font_dir
cp ./fonts/* $font_dir/

cp ./.p10k.zsh ~
