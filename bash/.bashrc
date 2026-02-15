#
# ~/.bashrc
#
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
export PATH=$PATH:~/bin
export MANPAGER="nvim +Man!"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

scratch() {

    if [ -z "$1" ]; then
        echo "Usage: scratch <directory_name>"
        return 1
    fi

    local target="$HOME/scratchpad/$1"

    if [ -d "$target" ]; then
        echo "Directory already exists, moving into it..."
    else
        echo "Creating new directory: $target"
        mkdir -p "$target"
    fi

    cd "$target" || return
}

_scratch_complete() {
    local base="$HOME/scratchpad"
    local cur

    cur="${COMP_WORDS[1]}"

    [ -d "$base" ] || return

    COMPREPLY=($(compgen -d -- "$base/$cur" | sed "s|^$base/||"))
}
complete -o nospace -F _scratch_complete scratch


dev() {
    [ -z "$1" ] && {
        echo "Usage: dev <directory_name>"
        return 1
    }

    local target="$HOME/devel/$1"

    if [ ! -d "$target" ]; then
        echo "No such project: $1"
        return 1
    fi

    cd "$target" || return
}

_dev_complete() {
    local base="$HOME/devel"
    local cur

    cur="${COMP_WORDS[1]}"

    [ -d "$base" ] || return

    COMPREPLY=(
        $(cd "$base" && compgen -d -- "$cur")
    )
}

complete -F _dev_complete dev
