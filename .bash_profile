# cd
alias ..='cd ..'
alias ...='cd ../..'

# open
alias o='open .'

# list
alias l='ls -lLahp'

# editors
alias c='code .'

# browser
alias b='open -a "Google Chrome"'

# clipboard
alias copy='pbcopy'
alias paste='pbpaste'

# change bash profile
alias chbp='code ~/dev/dotfiles/.bash_profile'

# eslint
alias lint='eslint --ignore-path .gitignore .'

# ssh into school server
alias s='ssh pcoursey@lovecraft.cs.nmt.edu'

# delete a remote branch
alias drbranch='git push origin --delete'

# alias homebrew python
alias python='python3'

# add mysql to path
export PATH="/usr/local/mysql/bin:$PATH"

# git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias go='git checkout'
alias gp='git pull'
alias gu='git push'
alias gb='git branch'
alias gm='git merge'
alias gl='git log'

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

# Upload a file to 0x0.st
0x0() {
  curl -F "file=@$1" https://0x0.st
}

# Add a blank tile to the dock
tile() {
  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
  killall Dock
}

# Print the terminal colors
colors() {
  T='Xi'
  echo -e "\n               40m    41m    42m    43m\
      44m    45m    46m    47m";
  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
  done
  echo
}

# Get the current git branch
pgb() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

#
# Styling
#

# ps1 and terminal colors
reset='\[\e[0m\]'
cyanbold='\[\e[1;36m\]'
export PS1="▲  $cyanbold\$(pgb)/$reset "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LANG=en_US.UTF-8

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
