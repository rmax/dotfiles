# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=21

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras mercurial pip command-not-found themes virtualenv virtualenvwrapper python)

# Some zsh plugins might require binaries installed only locally.
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# pattern-wise mv
autoload zmv

if [ -f $HOME/.shell_variables ]; then
  source $HOME/.shell_variables
fi

if [ -f $HOME/.shell_aliases ]; then
  source $HOME/.shell_aliases
fi

# fix mouse speed
#xinput set-prop 11 258 10  # Constant descelration
#xinput set-prop 11 257 1   # Accel profile

xe(){ curl -qs "http://www.xe.com/wap/2co/convert.cgi?Amount=$1&From=$2&To=$3" -A "Mozilla" -s | sed -n "s/.*>\(.*\) $3<.*/\1/p";}
