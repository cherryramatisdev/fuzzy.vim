# My solution to fuzzy finding

All the other fuzzy finders are too complex with a lot of UI, I just want a simple way to jump between files, this is my purpose :D 

## Installation

A sample installation example with [vim-plug](https://github.com/junegunn/vim-plug) can be found below:

```vim
call plug#begin()
  Plug 'cherryramatisdev/fuzzy.vim'
  let g:fuzzy_binary = 'fd'
call plug#end()
```

This will use `fd` binary for all the file search
