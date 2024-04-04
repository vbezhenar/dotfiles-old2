bindkey "^[[2~" overwrite-mode # Insert
bindkey "^[[3~" delete-char-or-list # Delete
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey "^[[5~" history-incremental-search-backward # Page Up
bindkey "^[[6~" history-incremental-search-forward # Page Down
bindkey "^[[1;5C" forward-word # Ctrl+Right
bindkey "^[[1;5D" backward-word # Ctrl+Right

HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt hist_reduce_blanks
setopt inc_append_history
setopt transient_rprompt

PS1=$'\n'"%(?..%F{red}%?%f )%# "
RPS1="%40<...<%~"

setopt auto_cd
setopt extended_glob
setopt multios

fpath+=(~/.zshfunctions)
autoload compinit
compinit

alias k=kubectl --field-manager=flux-client-side-apply

autoload _kubectl
autoload mkcd
autoload mkcdtmp

compdef _kubectl kubectl
