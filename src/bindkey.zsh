# Emacs mode
bindkey -e

# Use ctrl+arrow to move word by word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Use Home/End 
bindkey -s "^[[H" "^a"
bindkey -s "^[[F" "^e"

# history-search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
