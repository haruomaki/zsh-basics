# Expands .... to ../..
function expand-dot-to-parent-directory-path {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+='/..'
  else
    LBUFFER+='.'
  fi
}
zle -N expand-dot-to-parent-directory-path
bindkey "." expand-dot-to-parent-directory-path

# Disable beep sound
setopt no_beep

# Enable aliases in the sudo command
alias sudo='sudo '

# Alias for trash-cli
alias rm='trash'
