" Vim Improvements
set nocompatible
filetype off
let mapleader=","

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'b4b4r07/vim-hcl'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'cespare/vim-toml'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'depuracao/vim-rdoc'
Plugin 'elixir-lang/vim-elixir'
Plugin 'groenewege/vim-less'
Plugin 'jceb/vim-orgmode'
Plugin 'jnwhiteh/vim-golang'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'nanki/treetop.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/syntastic'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'toyamarinyon/vim-swift'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/JSON.vim'
Plugin 'vim-scripts/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-rooter'

Plugin 'tpope/vim-dispatch'
Plugin 'JarrodCTaylor/vim-ember-cli-test-runner'
Plugin 'jiangmiao/auto-pairs'
Plugin 'danhart/flatlandia'

call vundle#end()
filetype plugin indent on

" Shell
set shell=/bin/sh

" Project-specific vimrc
set exrc
set secure

syntax on

set number
set ruler
set nofoldenable
set nospell
" set showtabline=2
set guioptions=e

set encoding=utf-8

" Allow hidden buffers
set hidden

" Whitespace stuff
set nowrap
set list
set listchars=tab:▸\ ,trail:·

" Indentation
set ts=2 sts=2 sw=2 et
au FileType c setl ts=8 sts=8 sw=8 noet listchars=tab:\ \ ,trail:·
au FileType go setl ts=4 sts=4 sw=4 noet listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Load plugin and indent settings for detected filetype
filetype plugin indent on

" Color
set background=dark
colorscheme flatlandia

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"Rooter for change on tabs
autocmd BufEnter *.rb,*.html,*.py,*.json,*.css,*.json,*.js,Rakefile,*.ru :Rooter
autocmd TabEnter *.rb,*.html,*.py,*.json,*.css,*.json,*.js,Rakefile,*.ru :Rooter


nmap <LEADER>d :NERDTreeToggle<CR>
let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$','\.DS_Store$','dist']


" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" Reset search
map <C-l> :set hlsearch!<cr>

" Toggle relative numbers
map <C-\> :set relativenumber!<cr>

" Command height
set cmdheight=1

" Filetypes
au BufRead,BufNewFile Gemfile setl ft=ruby
au BufRead,BufNewFile Guardfile setl ft=ruby
au BufRead,BufNewFile Assetfile setl ft=ruby
au BufRead,BufNewFile *.hbs setl ft=handlebars
au BufRead,BufNewFile *.json setl ft=json

" Allow clipboard to function
set clipboard=unnamed

" XMP Filter
nmap <buffer> <Leader>xx <Plug>(xmpfilter-run)
nmap <buffer> <Leader>xc <Plug>(xmpfilter-mark)

" Automatically source the config file on save.
if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

" ctrl-p

set wildignore+=*/tmp/*
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
map <leader>f :CtrlP<cr>
" Syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" Syntax highlight group

map <c-h>
      \ :echo ""
      \ . "hi<" . synIDattr(synID(line("."), col("."), 1), "name") . "> "
      \ . "trans<" . synIDattr(synID(line("."), col("."), 0), "name") . "> "
      \ . "lo<" .  synIDattr(synIDtrans(synID(line("."),col("."), 1)), "name") . ">"
      \ <cr>


" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamecollapse = 0
