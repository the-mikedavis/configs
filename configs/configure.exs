# copy over all configs to ~ and append zsh aliases

files = File.ls! "copies"
home  = System.get_env "HOME"

for f <- files do
  IO.puts "Moving #{f} to ~/.#{f}"
  File.copy! "./copies/" <> f, home <> "/." <> f
end

File.mkdir_p!(home <> "/.vim/colors")
File.copy! "./firebird/firebird.vim", home <> "/.vim/colors/"
