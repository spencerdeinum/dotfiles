" Use Vim settings
set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on

" Set term colours to 256
set t_Co=256

" Autoload files changed on disk
set autoread

set encoding=utf-8

" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

" Move all backups to one directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backspace=indent,eol,start

" Turn on syntax highlighting, auto indent
syntax on
filetype plugin indent on

set laststatus=2
set showmatch
set incsearch

set background=dark
colorscheme base16-tomorrow

" Line numbers
set number

" disable all code folding
set nofoldenable

" disable preview window
set completeopt-=preview

" Maps jj to <esc>
inoremap jj <esc>
" Run all tests with leader t
map <leader>g :! bin/rspec <enter>
" Leader r maps the current spec file to be run with leader f
map <leader>r :call SetRspecFile()<CR>
function SetRspecFile()
    :execute "map <leader>f :! bin/rspec " . expand("%") . "<enter>"
endfunction

" 4 Spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Set ruby related files to 2 spaces
autocmd FileType ruby,haml,eruby,yaml,sass,cucumber set ai sw=2 sts=2 et

" Set these files to ruby syntax
au BufRead,BufNewFile Vagrantfile,Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Set md to markdown
au BufRead,BufNewFile *.md set ft=markdown syntax=markdown

" ctrlp settings
" clear cache with ctrl f
map <c-f> :CtrlPClearAllCaches <enter>
map <leader>t :CtrlPTag <enter>
let g:ctrlp_extensions = ['tag']
" piggyback off of git ls-files
let g:ctrlp_user_command = ['.git', 'cd %s && { git ls-files; git ls-files -o --exclude-standard; } | cat']

" Syntastic settings
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Disable syntastic for these filtypes
let g:syntastic_mode_map = { "passive_filetypes": ["html"] }
" Add c++11 support
let g:syntastic_cpp_compiler_options = ' -std=c++11 '
