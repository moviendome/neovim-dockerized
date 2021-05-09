# Neovim Dockerized

[Neovim](https://neovim.io/) dockerized with my personal configuration to work with Ruby & JS.

## Requirements

- [Docker](https://www.docker.com/get-started)

## Usage

```bash
# Install
git clone https://github.com/jferrer/neovim-dockerized.git
cd neovim-dockerized
docker build -t nvim .

# Run
docker run -it --rm -v $(pwd):/usr/src/nvim nvim [filename]
```

## Plugins

Read the docs of the plugins. Most of them have the default mappings so aren't listed later.

* [nerdtree](https://github.com/preservim/nerdtree) a tree explorer plugin for vim
* [vim-devicons](https://github.com/ryanoasis/vim-devicons) adds file type icons
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) shows a git diff in the gutter (sign column) and stages/undoes hunks and partial hunks
* [fugitive.vim](https://github.com/tpope/vim-fugitive) a Git wrapper so awesome, it should be illegal
* [surround.vim](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple
* [vim-airline](https://github.com/vim-airline/vim-airline) lean & mean status/tabline for vim that's light as air
* [vim-ruby](https://github.com/vim-ruby/vim-ruby) Vim/Ruby Configuration Files
* [ale](https://github.com/dense-analysis/ale) check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
* [rails.vim](https://github.com/tpope/vim-rails) Ruby on Rails power tools
* [vim-mkdir](https://github.com/pbrisbin/vim-mkdir) automatically create any non-existent directories before writing the buffer
* [vim-slim](https://github.com/slim-template/vim-slim) slim syntax highlighting for vim
* [vim-repeat](https://github.com/tpope/vim-repeat) enable repeating supported plugin maps with "."
* [rhubarb.vim](https://github.com/tpope/vim-rhubarb) GitHub extension for fugitive.vim
* [eunuch.vim](https://github.com/tpope/vim-eunuch) helpers for unix: delete, rename...
* [tComment](https://github.com/vim-scripts/tComment) an extensible & universal comment plugin that also handles embedded filetypes
* [vim-grepper](https://github.com/mhinz/vim-grepper) helps you win at grep
* [ctrlp.vim](https://github.com/kien/ctrlp.vim) fuzzy file, buffer, mru, tag, etc finder
* [typescript-vim](https://github.com/leafgarland/typescript-vim) Typescript syntax files for Vim
* [vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript) React JSX syntax highlighting for vim and Typescript
* [coc.nvim](https://github.com/neoclide/coc.nvim) Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
* [UltiSnips](https://github.com/SirVer/ultisnips) the ultimate snippet solution for Vim
* [vim-snippets](https://github.com/honza/vim-snippets) vim-snipmate default snippets
* [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets) the standard snippets repository for neosnippet
* [tagbar](https://github.com/majutsushi/tagbar) creates a sidebar that displays the ctags-generated tags of the current file
* [vim-zoom](https://github.com/dhruvasagar/vim-zoom) a simple plugin to toggle zoom of current window within the current tab

## Colorscheme

[NeoSolarized](https://github.com/icymind/NeoSolarized) Another solarized color theme for truecolor neovim / vim


## Key Mappings

The leader key is ```<SPACE>```.

 General:

    <leader>s         quick save
    <leader><leader>  back to last opened file

    <esc><esc>        remove search

    K                 show documentation in preview window

 Navigating file:

    hjkl              left, down, up, right
    0                 start of line
    $                 end of line
    w                 next word
    gg                beginning of file
    <shift>g          end of file

    <leader>t         open sidebar with ctags-generated tags

  Navigating files:

    <leader>p         open fuzzy finder
    <leader>b         open list of buffers

    gf                open file under cursor
    gd                go definition
    <ctrl>]           go definition (ctags)

    ,g                grep

  Tabs:

    <leader><tab>     open a new tab
    <leader>q         close current tab

    <tab>             next tab
    <shift><tab>      previous tab

    <up>
    <down>
    <left>
    <right>           resize tabs

   Panes:

    <leader>hjkl      move between panes
    ss                split horizontal
    sv                split vertical

    <leader>r         adjust height to lines' file

    <leader>z         zoom current pane

