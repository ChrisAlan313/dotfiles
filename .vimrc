" Shout out to @ahallock. These are taken from his vimrc.
:set number relativenumber
:syntax on

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Allow auto complete
set rtp+=~/tabnine-vim

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

" Disable arrow keys and slow down hjkl to force learning
Plug 'takac/vim-hardtime'
call plug#end()

" Start NERDTree on 'vim' without needing to do 'vim .'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Turn on vim hardtime by default
let g:hardtime_default_on = 1

