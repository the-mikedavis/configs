# My Configuration Files

On multiple machines, setting up the configuration files takes a while, and I
always find myself looking up download links over and over again.

This repository contains my main configuration files, hardlinked from my main
laptop. All I have to do is clone it onto a new machine and run through the
installers.

The `common.sh` file performs a `cp` for all the files here to the home
directory and prefixes each file with `.`. It also installs all the basic
packages I like (vim, tmux, git, etc.), all through the package manager of
the machine.

1. Create a file called `manager` in this directory. Git will ignore it.
2. Put the package manager on the first and only line.
    - For MacOS, this is `brew`, for linux this is usually `sudo apt-get`.
