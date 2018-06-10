export PS1="▲   "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ll='ls -lah'
alias code='open . -a Atom'
alias gogit='cd ~/Documents/git/'
alias gogita='cd ~/Documents/gita/'
alias ..='cd ..'
alias chbp='open -a Atom ~/.bash_profile'

dark() {
  cat ~/Dropbox/dark >> ~/.hyper.js;
}

light() {
  cat ~/Dropbox/light >> ~/.hyper.js;
}

export PATH="/usr/local/mysql/bin:$PATH"

# Show current working directory in hyper tabs
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                ;;
            *)
                echo -ne "\033]0;${BASH_COMMAND} - ${PWD##*/}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac
