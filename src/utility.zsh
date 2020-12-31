alias v='$VISUAL'
alias e='$EDITOR'
alias p='$PAGER'
alias b='$BROWSER'

type exa >/dev/null 2>&1
if [ $? -eq 0 ]; then
  alias ls='exa --sort=type --git'
  alias l='ls -1a'
  alias ll='ls -l'
  alias la='ll -a'
  alias tree='ls --tree'
else
  alias ls='ls --group-directories-first --color=auto -Xv'
  alias l='ls -1A'         # Lists in one column, hidden files.
  alias ll='ls -lh'        # Lists human readable sizes.
  alias la='ll -A'         # Lists human readable sizes, hidden files.
  alias tree='find . -type d | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"'
fi

# Makes a directory and changes to it.
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
  builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}
alias cd='cdls'
