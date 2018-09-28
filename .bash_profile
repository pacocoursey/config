# cd
alias ..='cd ..'
alias ...='cd ../..'

# open
alias o='open .'

# list
alias l='ls -lLahp'

# editors
alias a='atom .'

# browser
alias c='open -a "Google Chrome"'

#clipboard
alias copy='pbcopy'
alias paste='pbpaste'

# change bash profile
alias chbp='atom ~/.bash_profile'

# eslint
alias lint='eslint --ignore-path .gitignore .'

# ssh into school server
alias s='ssh pcoursey@lovecraft.cs.nmt.edu'

#
# Functions
#

# Go to a <repo> in ~/dev
dev() {
  cd "$HOME/dev/$1"
}

# Go to a <repo> in ~/fork
fork() {
  cd "$HOME/fork/$1"
}

#
# Styling
#

# ps1 and terminal colors
export PS1="▲   "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Show the cwd in the tab title bar
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
