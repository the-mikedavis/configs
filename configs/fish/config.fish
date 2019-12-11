source ~/.config/fish/aliases.fish

set -Ux EDITOR vim
set -Ux ERL_AFLAGS "-kernel shell_history enabled"

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
  source ~/.asdf/completions/asdf.fish
end

if test -n "$EMACS"
  set -x TERM eterm-color
end

function fish_title
  true
end

set -g fish_user_paths $fish_user_paths "/usr/local/sbin"
set -g fish_user_paths "/run/current-system/sw/bin" $fish_user_paths
set -gx GPG_TTY (tty)
set -gx PINENTRY_USER_DATA "USE_CURSES=1"
