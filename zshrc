# omz Installation Path
export ZSH="/$HOME/.oh-my-zsh"

# omz theme
ZSH_THEME="af-magic"

# omz plugins
plugins=(git
node
npm
yarn
vscode
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Welcome.sh waking call
zsh ~/.welcome/welcome.sh

# HomeBrew Library
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/detzz/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/detzz/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Starship Setiing Up
eval "$(starship init zsh)"

# Some Useful Alias
## MS Windows clear pwshell / cmd
alias cls="clear"
## Mac OS DNS Flush
alias dns-flush="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
## Python 3 shortener
alias python="python3"