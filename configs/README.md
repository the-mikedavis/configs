# Configuration Files

The `copyover.sh` file performs a `cp` for all the files here to the home
directory and prefixes each file with `.`. It also installs all the basic
packages I like (vim, tmux, git, etc.), all through the package manager of
the machine, or through external scripts.

1. Create a file called `manager` in this directory. Git will ignore it.
2. Put the package manager on the first and only line.
    - For MacOS, this is `brew`, for linux this is usually `sudo apt-get`.
