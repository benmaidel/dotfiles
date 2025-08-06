#!/bin/bash

# powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git nerd-fonts
cd nerd-fonts
./install.sh
cd .. && rm -rf nerd-fonts

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

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc

#!/bin/bash

# Upgrade python packages

PIP_BREAK_SYSTEM_PACKAGES=1 pip install colcon-mixin pre-commit

# Upgrade package sources.
sudo apt update && sudo apt upgrade -y

# Update ROS dependencies
rosdep update

# Deploy helper scripts to bashrc.

echo "" >> /home/virtual/.zshrc
echo "# Source ROS helper functions." >> /home/virtual/.zshrc
echo "source ~/.scripts/helper_functions.sh" >> /home/virtual/.zshrc
echo "source ~/.scripts/variables.sh" >> /home/virtual/.zshrc
echo "source ~/.scripts/calls.sh" >> /home/virtual/.zshrc

mkdir -p /commandhistory
touch /commandhistory/.zsh_history
chown -R virtual /commandhistory

echo "autoload -Uz add-zsh-hook; append_history() { fc -W }; add-zsh-hook precmd append_history; export HISTFILE=/commandhistory/.zsh_history" >> /home/virtual/.zshrc

echo "cd" >> /home/virtual/.zshrc
