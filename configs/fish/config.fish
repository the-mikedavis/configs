source ~/.config/fish/functions/aliases.fish

set -Ux EDITOR vim
set -Ux ERL_AFLAGS "-kernel shell_history enabled"
set -gx PATH /Users/michael/.asdf/shims /anaconda3/bin /Users/michael/.config/fnm/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /usr/local/share/dotnet /Library/TeX/texbin /Applications/Wireshark.app/Contents/MacOS

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
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
