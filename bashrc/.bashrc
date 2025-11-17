# ~/.bashrc — customized shell for Ubuntu 24.04

# --------------------------------------------------------------------
# Setup and dependency checks
# --------------------------------------------------------------------

if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
fi

has_git=$(command -v git >/dev/null 2>&1 && echo 1 || echo 0)
has_lsd=$(command -v lsd >/dev/null 2>&1 && echo 1 || echo 0)
has_bat=$(command -v batcat >/dev/null 2>&1 && echo 1 || echo 0)
has_fzf=$(command -v fzf >/dev/null 2>&1 && echo 1 || echo 0)

# --------------------------------------------------------------------
# Colors
# --------------------------------------------------------------------

BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
BOLD="\033[1m"
DIM="\033[2m"
RESET="\033[0m"

# --------------------------------------------------------------------
# Git branch helper
# --------------------------------------------------------------------

parse_git_branch() {
    if [ "$has_git" -eq 1 ]; then
        branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
        if [ -n "$branch" ]; then
            status=$(git status --porcelain 2>/dev/null)
            if [ -n "$status" ]; then
                echo " (${RED}${branch}*${RESET})"
            else
                echo " (${GREEN}${branch}${RESET})"
            fi
        fi
    fi
}

# --------------------------------------------------------------------
# Prompt
# --------------------------------------------------------------------

PS1="\n\[${BOLD}${CYAN}\]\u\[${RESET}\]@\[${MAGENTA}\]\h\[${RESET}\] ${DIM}in\[${RESET}\] \[${BOLD}${BLUE}\]\w\[${RESET}\]\$(parse_git_branch)\n\[${YELLOW}\]╰─>\[${RESET}\] "

# --------------------------------------------------------------------
# Aliases
# --------------------------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias cls='clear'
alias l='ls -lh --color=auto'
alias ll='ls -alh --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'

if [ "$has_lsd" -eq 1 ]; then
    alias ls='lsd'
    alias ll='lsd -l'
    alias la='lsd -a'
fi

if [ "$has_bat" -eq 1 ]; then
    alias cat='batcat --style=plain --paging=never'
fi

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'

alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias reload='source ~/.bashrc && echo "Bash configuration reloaded."'

# --------------------------------------------------------------------
# Functions
# --------------------------------------------------------------------

extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz) tar xzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) unrar x "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xf "$1" ;;
            *.tbz2) tar xjf "$1" ;;
            *.tgz) tar xzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *) echo "'$1' cannot be extracted" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

if [ "$has_fzf" -eq 1 ]; then
    fd() {
        local dir
        dir=$(find ${1:-.} -type d 2>/dev/null | fzf +m) && cd "$dir"
    }
fi

# --------------------------------------------------------------------
# History and shell behavior
# --------------------------------------------------------------------

export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# --------------------------------------------------------------------
# Welcome message
# --------------------------------------------------------------------

if [[ $- == *i* ]]; then
    clear
    echo -e "${BOLD}${CYAN}Welcome, ${USER}.${RESET}"
    echo -e "Today is ${MAGENTA}$(date +"%A, %d %B %Y")${RESET}\n"
fi

