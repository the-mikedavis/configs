source ~/.config/fish/functions/aliases.fish

set -U EDITOR vim

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
  source ~/.asdf/completions/asdf.fish
end

fnm lts
