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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Disable arrow keys and slow down hjkl to force learning
Plug 'takac/vim-hardtime'
call plug#end()

" Start NERDTree on 'vim' without needing to do 'vim .'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Turn on vim hardtime by default
let g:hardtime_default_on = 1

" Airline Theme
let g:airline_theme = 'nova'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
