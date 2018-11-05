# Link bash profile
rm ~/.bash_profile
ln -s ./.bash_profile ~/.bash_profile

# Link hyper config
rm ~/.hyper.js
ln -s ./.hyper.js ~/.hyper.js

# Link atom snippets
rm ~/.atom/snippets.cson
ln -s ./snippets.cson ~/.atom/snippets.cson
