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

## Demo

https://github.com/cherryramatisdev/fuzzy.vim/assets/86631177/cacd14f5-47c5-4eeb-8595-c868b44f4088

## Commands available

- `Edit` : Offer fuzzy finding tabcompletion and edit with the `:e` command
- `VEdit` : Offer fuzzy finding tabcompletion and edit with the `:vs` command
- `SEdit` : Offer fuzzy finding tabcompletion and edit with the `:sp` command
- `TEdit` : Offer fuzzy finding tabcompletion and edit with the `:tabnew` command

## Command abbreviations available

- `find` -> `Edit`
- `fin` -> `Edit`
- `fi` -> `Edit`

- `sfind` -> `SEdit`
- `sfin` -> `SEdit`
- `sf` -> `SEdit`

- `vfind` -> `VEdit`
- `vfin` -> `VEdit`
- `vf` -> `VEdit`

- `tfind` -> `TEdit`
- `tfin` -> `TEdit`
- `tf` -> `TEdit`
