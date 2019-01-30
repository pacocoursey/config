# Link bash profile
rm ~/.bash_profile
ln -s ~/dev/dotfiles/.bash_profile ~/.bash_profile

# Link hyper config
rm ~/.hyper.js
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

# Link atom snippets
rm ~/.atom/snippets.cson
ln -s ~/dev/dotfiles/snippets.cson ~/.atom/snippets.cson

# Link eslint config
rm ~/.eslintrc
ln -s ~/dev/dotfiles/.eslintrc ~/.eslintrc

# Link stylelint config
rm ~/.stylelintrc
ln -s ~/dev/dotfiles/.stylelintrc ~/.stylelintrc

# Link vscode config
rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dev/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
