alias v="vim"
funcsave v
alias c="cd"
funcsave c
alias e="exa"
funcsave e
alias g="git"
funcsave g
alias t="tmux"
funcsave t
alias h="history"
funcsave h
alias cr="clear"
funcsave cr
alias ty="type"
funcsave ty

function ve --description 'read everything in tabs'
  if set -q $argv[1]
    vim -p *
  else
    vim -p $argv[1]
  end
end
funcsave ve
