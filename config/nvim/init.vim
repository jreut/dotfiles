" vim:sw=2 smarttab expandtab

runtime macros/matchit.vim              " extra text objects

call plug#begin()
Plug 'altercation/vim-colors-solarized' " color scheme
Plug 'kana/vim-textobj-user'            " support textobj-rubyblock
Plug 'nelstrom/vim-textobj-rubyblock'   " `ar`, `ir` et al. text objects
Plug 'tpope/vim-commentary'             " `gcc` and friends
Plug 'tpope/vim-sensible'               " some defaults
Plug 'tpope/vim-vinegar'                " directory listing via `-`
call plug#end()

set cursorcolumn                        " highlight current column
set cursorline                          " highlight current line
set ignorecase                          " case-insensitive search
set list                                " show whitespace
set number                              " show line numbers
set relativenumber                      " instead of absolute line number
set showcmd                             " show keymaps as I type
set smartcase                           " use with ignorecase

set background=light
let g:solarized_termcolors=256
colorscheme solarized
