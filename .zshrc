
source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git   
antigen bundle osx
antigen bundle docker
antigen-bundle brew
antigen-bundle history
antigen-bundle vagrant
antigen-bundle common-aliases
antigen-bundle zsh-users/zsh-completions src
antigen-bundle zsh-users/zsh-history-substring-search

antigen theme miloshadzic

plugins+=(zsh-completions)

antigen apply

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
   alias vim="vim"
else
  export EDITOR='vimr'
  alias vim="vimr"
fi

alias ll="ls -lah"


# history settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
 
