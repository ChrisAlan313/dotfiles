" Shout out to @ahallock. These are taken from his vimrc.
:set number relativenumber
:syntax on

" Use TabNine - the using TabNine with Plug breaks vim
set rtp+=~/tabnine-vim

" highlight trailing whitespace
match ErrorMsg '\s\+$'

" Clean linebreaks without breaking words
set wrap linebreak nolist

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Plugins
call plug#begin('~/.vim/plugged')
" Markdown Plugins
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'gabrielelana/vim-markdown'

" Whitespace
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'

" Rails
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

" Colors
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'kien/ctrlp.vim'
call plug#end()

""""
"""" Start NERDTree settings
""""

" Start NERDTree on 'vim' without needing to do 'vim .'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Show hidden files by default

let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1

""""
"""" End NERDTree settings
""""

" Turn on vim hardtime by default
let g:hardtime_default_on = 1

" Airline Theme
" let g:airline_theme = 'nova'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" color settings for tmux
set background=dark
set t_Co=256

set showmatch


" Windows 10 Changes
set backspace=indent,eol,start " backspace over everything in insert mode
