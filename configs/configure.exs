# copy over all configs to ~ and append zsh aliases

files = File.ls! "copies"
home  = System.get_env "HOME"

for f <- files do
  IO.puts "Moving #{f} to ~/.#{f}"
  File.copy! "./copies/#{f}", "#{home}/.#{f}"
end

File.mkdir_p! "#{home}/.vim/colors"
File.copy! "./firebird/firebird.vim", "#{home}/.vim/colors/firebird.vim"
IO.puts "Moved firebird to ~/.vim/colors"

IO.puts "Making fish functions dir"
File.mkdir_p! "#{home}/.configs/fish/functions"
IO.puts "Putting aliases in ~/.config/fish/functions"
File.copy! "./fish/aliases.fish", "#{home}/.configs/fish/functions/"
IO.puts "Putting fish config in ~/.config/fish/"
File.copy! "./fish/config.fish", "#{home}/.configs/fish/"
