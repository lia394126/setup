syntax on
colorscheme desert

" Spacing
set tabstop=4 " 4 space tabs
set shiftwidth=4 " 4 space shift (using '>')
set softtabstop=4 " Tab spaces in no hard tab mode
set expandtab  " Use spaces instead of tabs
set autoindent

" Line numbers
set number " Show line number

" Set hybrid relative and absolute line numbers
set nu rnu

" Visual surroundings
set showmatch " Highlight matching braces
set ruler " Show bottom ruler
set title " Set window title to file

" Window
set equalalways " Split windows equal size

" Formatting
set formatoptions=croq " Enable comment line auto formatting
set autoindent

" Search
set hlsearch " Highlight on search
set ignorecase " Search ignoring case
set smartcase " Search using smartcase
set incsearch " Start searching immediately

" Scroll off
set scrolloff=5

" Misc
set scrolloff=5 " Never scroll off
set clipboard=unnamed " Copy and paste from system clipboard
set lazyredraw " Don't redraw while running macros (faster)
set linebreak " Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start " Better backspacing
set linebreak " Intelligently wrap long files
set ttyfast " Speed up vim
set nostartofline " Vertical movement preserves horizontal position

" No sound on errors from github.com/amix/vimrc
set noerrorbells
set novisualbell
set t_vb=
set tm=500

filetype plugin indent on

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
" FZF plugin 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" COC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
