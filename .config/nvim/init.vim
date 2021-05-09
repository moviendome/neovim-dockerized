" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" File Explorer with Icons
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'w0rp/ale'
Plug 'tpope/vim-rails'
Plug 'pbrisbin/vim-mkdir'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-eunuch'
Plug 'vim-scripts/tComment'
Plug 'mhinz/vim-grepper'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet-snippets'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'dhruvasagar/vim-zoom'

Plug 'iCyMind/NeoSolarized'

call plug#end()

" Stop word wrapping except on markdown
set nowrap
autocmd FileType markdown setlocal wrap

set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8
set backspace=indent,eol,start
set hidden
set showcmd
set cursorline
set number
set laststatus=2
set showmatch
set incsearch
set display+=lastline
set wildmenu
set ignorecase
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set conceallevel=1
set noerrorbells
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

nnoremap s <Nop>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sq :<C-u>q<CR>
nnoremap sn gt
nnoremap sp gT

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <ESC><ESC> :nohlsearch<CR>

set wildmode=list,full

set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

colorscheme NeoSolarized

set termguicolors
syntax on

" Leader
let mapleader="\<SPACE>"

" Return to last opened file
nmap <Leader><Leader> <c-^>

" arrow keys resize pane
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

nnoremap <Leader>r :exec 'resize' line('$')<CR>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Quick save
nnoremap <Leader>s :update<CR>

" Tabs
nnoremap <Leader><Tab> :tabnew<CR>
nnoremap <Leader>q :tabclose<CR>
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>

" Move between panes
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Fuzzy Finder
nnoremap <Leader>p :CtrlP<CR>

" Tagbar
nnoremap <Leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/uctags'

" Buffer
noremap <silent> <Leader>b :CtrlPBuffer<CR>

" Zoom
nmap <Leader>z <Plug>(zoom-toggle)

" ale
nmap <leader>d <Plug>(ale_fix)

let g:ale_linters = {
  \ 'ruby': ['rubocop'],
  \}
	"\ 'javascript': ['prettier', 'eslint', 'flow'],
	"\   'typescript': ['tsserver', 'tslint'],
	"\ 'markdown': ['textlint']

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \}

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 0
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Snippets
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="**"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" airline theme
let g:airline_theme = 'minimalist'
let g:airline#extensions#tagbar#enabled = 0

" vim-indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=gray
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

" coc
let g:coc_global_extensions = [
    \'coc-yank',
    \'coc-highlight',
    \'coc-prettier',
    \'coc-pairs',
    \'coc-json',
    \'coc-css',
    \'coc-html',
    \'coc-tslint',
    \'coc-tsserver',
    \'coc-yaml',
    \'coc-solargraph',
    \'coc-tsserver'
    \]

" use <tab> for trigger completion and navigate to the next completion item
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

" use shift-<tab> to navigate to previous completion item
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" enter selects the first completion item and confirm the completion when no item has been selected
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" same as above but fixes coc + endwise conflict
" tpope/vim-endwise/issues/125
inoremap <silent> <CR> <C-r>=<SID>coc_confirm()<CR>
function! s:coc_confirm() abort
	if pumvisible()
		return coc#_select_confirm()
	else
		return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	endif
endfunction

" neoclide/coc.nvim/issues/28
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use K to show/hide documentation in preview window
function! s:show_documentation()
	if coc#float#has_float()
		call coc#float#close_all()
	elseif (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" Coc Binds
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> K :call <SID>show_documentation()<CR>

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Show all diagnostics
nnoremap <silent><leader>d :<C-u>CocList diagnostics<cr>

" Fix autofix problem of current line
nmap <leader>cf <Plug>(coc-fix-current)

" Remap for codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction

xmap <silent> <leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
