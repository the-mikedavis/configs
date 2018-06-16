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
alias aoeu="asdf"
funcsave aoeu

function ve --description 'read everything in tabs'
  if test -d $argv[1]
    vim -p $argv[1]*
  else if set -q $argv[1]
    vim -p *
  else
    vim -p $argv[1]
  end
end
funcsave ve

function gerge --description 'take in a github merge locally'
  set branch (git rev-parse --abbrev-ref HEAD)
  git checkout master
  git pull
  git branch -d $branch
end
funcsave gerge
