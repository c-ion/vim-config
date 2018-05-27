"""""""""""""""""""""""""""""""""""""
" Vimrc configuration
"""""""""""""""""""""""""""""""""""""
set encoding=utf8

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                                                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'

" Theme / Interface
Plugin 'ajh17/Spacegray.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()                                           " required
filetype plugin indent on                                   " required
"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Basic vim settings
set title                                                   " set the terminal's title
set nowrap                                                  " disable text wrapping
set nocompatible                                            " use vim settings, rather than vi settings
set list listchars=tab:»\ ,trail:·                          " set to show invisibles (tabs & trailing spaces) & their highlight color
set clipboard=unnamed                                       " yank and paste with the system clipboard
set ruler                                                   " show the cursor position
set history=50                                              " keep 50 lines of command line history
set backspace=indent,eol,start                              " allow backspacing over everything in insert mode
set noswapfile                                              " disable swap file
set noshowmode                                              " disable the message displayed on the last line
set ttyfast                                                 " indicates a fast terminal connection. More characters will be sent to the screen for redrawing

" Show linenumbers
set number

" Global tab width
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Theme and Styling
syntax on
set t_Co=256

let base16colorspace=256                                    " Access colors present in 256 colorspace
colorscheme spacegray

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='utf-8'

"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'

