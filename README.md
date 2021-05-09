## Dotfiles

### Contents
the repo was initaily meant for hosting vim files.
I however switched to using neovim and hence the neovim folder.
The .vim folder has a file containing plugins i use with vim. 
The neovim folder is all you need if you will be working with neovim.

### Getting started.
After cloning the repo, you will need to create a symlink to point to the
location

#### Example command on mac osx:

#### Neovim:
`ln -s /path-to-cloned-repo/dotfiles/neovim/init.vim  /Users/username/.config/nvim/init.vim`

#### Vim: 
`ln -s /path-to-cloned-repo/dotfiles/.vimrc /Users/username/.vimrc`

Same applies for plugins.vim and any other file you might want to
symlink.

`ln -s /path-to-cloned-repo/dotfiles/neovim/plugins.vim  /Users/username/.config/nvim/plugins.vim`

#### Tmux:
`ln -s /path-to-cloned-repo/dotfiles/tmux.conf /$HOME/.tmux.conf`

This should be good to get you started

#### Useful links
[troubleshoot/debug key bindings/mappings](https://vi.stackexchange.com/questions/7722/how-to-debug-a-mapping) : sometimes mappings my not work as expected.
do `:help map-which-keys ` for vim's suggestions on what keys to map.



