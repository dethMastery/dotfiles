#/bin/sh

####################
# Auth Call
sudo clear

####################
# Setting Up "Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.zshrc
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.bashrc

####################
# Setting up main course
brew install curl wget git zsh gh neovim tmux

####################
# Install VimPlug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

####################
# Setting Up "omz"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

####################
# Setting Up "Welcome.sh"
zsh -c "$(curl -s https://raw.githubusercontent.com/G2-Games/welcome.sh/main/install.sh)"

####################
# Setting Up "ZSH Hightlight Syntax"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

####################
# Installing Starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config && touch ~/.config/starship.toml
cp -rf starship-emoji.toml ~/.config/starship.toml

cp -rf zshrc-macos ~/.zshrc

####################
# Setting up nvim Config
cp -rf config/nvim ~/.config/

####################
# Recalling zsh
zsh

printf "Don't forgot to do :PlugInstall in nvim :)"
