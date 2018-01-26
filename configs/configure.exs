# copy over all configs to ~ and append zsh aliases

files =  System.ls! "copies"

for f <- files do
  IO.puts "Moving #{f} to ~/.#{f}"
  File.cp! "copies/" <> f, "~/." <> f
end
aliases = File.read! "./aliases"
File.write! "~/.zshrc", aliases, [:append]
