# Link bash profile
rm ~/.bash_profile
ln -s ~/dev/dotfiles/.bash_profile ~/.bash_profile

# Link hyper config
rm ~/.hyper.js
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

# Link atom snippets
rm ~/.atom/snippets.cson
ln -s ~/dev/dotfiles/snippets.cson ~/.atom/snippets.cson
