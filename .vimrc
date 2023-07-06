" Shout out to @ahallock. These are taken from his vimrc.
:set number relativenumber
:syntax on

" highlight trailing whitespace
match ErrorMsg '\s\+$'

" Clean linebreaks without breaking words
set wrap linebreak nolist

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

