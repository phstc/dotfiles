# https://github.com/postmodern/chruby#configuration
# http://pbrisbin.com/posts/chruby/
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby $(cat ~/.ruby-version)


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
if [ -f ~/.bash_profile ]; then
   source ~/.bash_profile
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump git brew bundler2 gem knife knife_ssh github heroku colorize coffee)

source $ZSH/oh-my-zsh.sh

unalias knife
unsetopt correct_all

