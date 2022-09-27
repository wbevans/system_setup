#!/usr/bin/bash

cd ~

RUNZSH=no sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

if [ -d ".oh-my-zsh" ];
then
    sed -i 's/^ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
    sed -i 's/^plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)/' ~/.zshrc
    
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    wget -O ~/.p10k.zsh https://raw.githubusercontent.com/wbevans/system_setup/main/p10k.zsh
    wget https://raw.githubusercontent.com/wbevans/system_setup/main/zshrc -O ->> ~/.zshrc
    
    git config --global user.email "16963259+wbevans@users.noreply.github.com"
    git config --global user.name "wbevans"
fi
