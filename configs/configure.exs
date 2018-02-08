# copy over all configs to ~ and append zsh aliases

files = File.ls! "copies"
home  = System.get_env "HOME"

for f <- files do
  IO.puts "Moving #{f} to ~/.#{f}"
  File.copy! "./copies/" <> f, home <> "/." <> f
end

IO.puts "Appending aliases to the Zsh-rc"
aliases = File.read! "./aliases"
File.write! home <> "/.zshrc", aliases, [:append]
