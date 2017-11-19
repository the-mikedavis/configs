shopt -s expand_aliases

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

alias dev="cd ~/webdev/personal/"


#   Alias to access the headless chrome app
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

#   Alias to upgrade and cleanup Homebrew formulas
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

#   Alias which runs ls with color for directories and black for files,
alias ls="ls -GFh"
#   Now made easier for the dvorak keyboard layout.
alias see="exa"
#   Common mistake I keep making
#alias cd..="cd .."

#   alias to exa every time I cd
#function cd() {
#    command cd $@; command exa
#}

#   function to go into the directory if there is only one made
function mkdir() {
    command mkdir $@
    if [ $# -eq 1 ]; then
        command cd $1
    fi
}

#   replace less with vimpager, which adds colors
alias less="vimpager"

#   apparently unix gurus alias this commonly
alias h="history"
export HISTSIZE=100

#   Aliases to run python 3 instead of python 2
alias py="python3"
#alias pip="pip3"

#   Alias to get tmux with colors
alias tmux="TERM=screen-256color-bce tmux"

#   Wrapper function to create shortcut aliases for git, with flags
#git() {
#    case "$*" in
#        cia* ) shift 1; command git commit -a "$@" ;;
#        ci*  ) shift 1; command git commit "$@" ;;
#        st*  ) shift 1; command git status "$@" ;;
#        ol*  ) shift 1; command git log --oneline "$@" ;;
#        *    ) command git "$@" ;;
#    esac
#}  

#   Alias to easily kill a tmux session
#   Usage: tkill [session-name]
function tkill() {
    tmux kill-session -t $1
}

PATH=$HOME/bin:$PATH:/opt/metasploit-framework/bin:/Users/michael/bin/apache-maven-3.5.2/bin:
export PATH=$PATH:/opt/metasploit-framework/bin:/Users/michael/assimp/bin
export MONO_GAC_PREFIX="/usr/local"

#   typo
alias celar="clear"

alias ai="cd ~/now/ai/assignments"
alias uni="cd ~/now/unic/assignments"

alias shred="rm -Pfv"

alias raster="cd ~/webdev/personal/static/dist/raster"

function p3() {
    processing-java --sketch="`pwd`/$1" --run
}

alias tard="tar -zvcf"

alias untar="tar -zvxf"

alias mvnew="mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=org.openjdk.jmh -DarchetypeArtifactId=jmh-java-benchmark-archetype -DgroupId=org.sample -DartifactId=bench -Dversion=1.0"


PKGMG=brew
