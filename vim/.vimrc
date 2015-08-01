" Use Vim settings
set nocompatible
" Set term colours to 256
set t_Co=256

" Autoload files changed on disk
set autoread

set encoding=utf-8

" Pathogen
call pathogen#infect()

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

" 4 Spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

set laststatus=2
set showmatch
set incsearch

set background=dark
colorscheme Tomorrow-Night-Bright

" Line numbers
set number

" disable all code folding
set nofoldenable

" disable preview window
set completeopt-=preview

" Maps jj to <esc>
inoremap jj <esc>

" bind key to set indent style to kernel coding style
map <leader>k :set ai ts=8 sw=8 sts=8 textwidth=80 noet

" Let the :Error window pop up automatically
" let g:syntastic_auto_loc_list=1
" let g:syntastic_auto_jump=1

" Disable syntastic for these filtypes
" let g:syntastic_mode_map = { "passive_filetypes": ["html"] }

" Add c++11 support
" let g:syntastic_cpp_compiler_options = ' -std=c++11 '

" Set ruby related files to 2 spaces
autocmd FileType ruby,haml,eruby,yaml,sass,cucumber set ai sw=2 sts=2 et

" Set these files to ruby syntax
au BufRead,BufNewFile Vagrantfile,Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

let g:airline_powerline_fonts = 1

map <c-f> :CtrlPClearAllCaches <enter>

map <leader>t :CtrlPTag <enter>

let g:ctrlp_user_command = ['.git', 'cd %s && { git ls-files; git ls-files -o --exclude-standard; } | cat']

" Let airline display smart tab line
let g:airline#extensions#tabline#enabled = 1
