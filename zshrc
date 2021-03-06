# https://github.com/postmodern/chruby#configuration
# http://pbrisbin.com/posts/chruby/
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby $(cat ~/.ruby-version)

if [ -f $HOME/.bash_profile ]; then
  source $HOME/.bash_profile
fi

if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

if [ -f $HOME/.aliases ]; then
  source $HOME/.aliases
fi


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
BUNDLED_COMMANDS=(shoryuken)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler_custom bundler_bump_custom capistrano_custom brew gem github heroku chruby git)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

setopt auto_cd
cdpath=($HOME $HOME/spree $HOME/workspace $HOME/go/src)

# http://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch

PROMPT='$(ce_prompt)%{$fg[green]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_CLEAN=""
