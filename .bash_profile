export PS1="▲   "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias l='ls -lLahp'
alias c='open . -a Atom'
alias chbp='open -a Atom ~/.bash_profile'
alias lint='eslint --ignore-path .gitignore .'
alias fix='eslint --ignore-path .gitignore --fix .'

alias web='cd ~/Documents/web'
alias gogit='cd ~/Documents/git/'
alias gogitf='cd ~/Documents/gitf'
alias gogita='cd ~/Documents/gita/'

export PATH="/usr/local/mysql/bin:$PATH"

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;⬡ ${PWD##*/}\007"'
    show_command_in_title_bar() {
        case "$BASH_COMMAND" in
            *\033]0*)
                ;;
            *)
                echo -ne "\033]0;⬡ ${BASH_COMMAND} - ${PWD##*/}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac
