#!/bin/bash


cp ./.gitmessage ~

# powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git nerd-fonts
cd nerd-fonts
./install.sh
cd .. && rm -rf nerd-fonts

#meslo font

# oh-my-zsh & plugins


wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
cp ./.zshrc ~

font_dir="$HOME/.local/share/fonts"
mkdir -p $font_dir
cp ./fonts/* $font_dir/

cp ./.p10k.zsh ~
