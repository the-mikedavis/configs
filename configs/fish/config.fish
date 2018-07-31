source ~/.config/fish/functions/aliases.fish

set -Ux EDITOR vim
set -Ux ERL_AFLAGS "-kernel shell_history enabled"

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
  source ~/.asdf/completions/asdf.fish
end

fnm lts
