" Use Vim settings
set nocompatible
set t_Co=256

" Autoload files changed on disk
set autoread

set shell=/bin/sh

" Pathogen!
call pathogen#infect()

set encoding=utf-8

" Let the :Error window pop up automatically
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_jump=1

" Disable syntastic for these filtypes
let g:syntastic_mode_map = { "passive_filetypes": ["html"] }

" Add c++11 support
let g:syntastic_cpp_compiler_options = ' -std=c++11 '

" Turn on syntax highlighting, auto indent
syntax on
filetype plugin indent on

" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

" Move all backups to one directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backspace=indent,eol,start

" Spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" bind key to set indent style to kernel coding style
map <leader>k :set ai ts=8 sw=8 sts=8 textwidth=80 noet

autocmd FileType ruby,haml,eruby,yaml,sass,cucumber set ai sw=2 sts=2 et

set laststatus=2
set showmatch
set incsearch

set background=dark
colorscheme Tomorrow-Night

" Line numbers
set number

" Don't show scroll bars in the GUI
if has('gui_running')
	set guioptions-=L
	set guioptions-=r
	set guioptions-=m
	set guioptions-=T
	set guifont=Ubuntu\ Mono\ 12
endif

" Set font to patched Monaco when using macvim
if has("gui_macvim")
	set guifont=Monaco\ for\ Powerline:h14
	" Enable patched powerline fonts
	let g:airline_powerline_fonts = 1
endif

let g:airline_powerline_fonts = 1

" Maps jj to <esc>
inoremap jj <esc>
command! W :w
map <c-f> :CtrlPClearAllCaches <enter>

augroup vimrcEx
	autocmd!
	" Change autoindent settings for ruby related files
	autocmd FileType ruby,haml,eruby,yaml,sass,cucumber set ai sw=2 sts=2 et
	" And coffeescript
	autocmd FileType coffee set ai sw=2 sts=2 et
	" And rust
	autocmd FileType rust set ai sw=2 sts=2 et
	" And scala
	autocmd FileType scala,sbt set ai sw=2 sts=2 et
	autocmd Filetype python set ai sw=4 sts=4 et
  " Haskell
	autocmd Filetype haskell set ai sw=2 sts=2 et
  " PHP
	autocmd Filetype php set ai sw=4 sts=4 et
	" Blade for Laravel
	autocmd Filetype *.blade.php set filetype=html set ai sw=4 sts=4 et
augroup END

" Set .blade.php to html
au BufRead,BufNewFile *.blade.php set filetype=html

" Some ruby syntax files
au BufRead,BufNewFile Vagrantfile,Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

map <leader>t :CtrlPTag <enter>
" map <leader>t :! bundle exec rspec <enter>
map <leader>f :! ruby %<cr>
"map <leader>t :set ai sw=2 sts=2 et

set wildignore+=build,bin,*.pyc

let g:ctrlp_user_command = ['.git', 'cd %s && { git ls-files; git ls-files -o --exclude-standard; } | cat']

" Let airline display smart tab line
let g:airline#extensions#tabline#enabled = 1

map <leader>s :set ai sw=2 sts=2 et

" disable all code folding
set nofoldenable

" disable preview window
set completeopt-=preview

let g:pymode_lint_write = 0

let g:phpcomplete_cache_taglists = 1
