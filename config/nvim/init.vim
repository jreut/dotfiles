" vim:sw=2 smarttab expandtab

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'           " diff markers in gutter
Plug 'altercation/vim-colors-solarized' " color scheme
Plug 'benekastah/neomake'               " compile, lint, etc.
Plug 'christoomey/vim-tmux-navigator'   " tmux compatability
Plug 'janko-m/vim-test'                 " run test files
Plug 'kana/vim-textobj-user'            " support textobj-rubyblock
Plug 'ledger/vim-ledger'                " plain text accounting journals
Plug 'nelstrom/vim-textobj-rubyblock'   " `ar`, `ir` et al. text objects
Plug 'rking/ag.vim'                     " :Ag
Plug 'tpope/vim-bundler'                " :Bundle
Plug 'tpope/vim-commentary'             " `gcc` and friends
Plug 'tpope/vim-endwise'                " block/method completions
Plug 'tpope/vim-eunuch'                 " :Rename, :Move and friends
Plug 'tpope/vim-flagship'               " better tabline
Plug 'tpope/vim-fugitive'               " git wrapper
Plug 'tpope/vim-projectionist'          " per-project configuration
Plug 'tpope/vim-rails'                  " :Rails
Plug 'tpope/vim-rake'                   " :Rake
Plug 'tpope/vim-repeat'                 " use `.` for surround et al.
Plug 'tpope/vim-sensible'               " some defaults
Plug 'tpope/vim-sleuth'                 " automatic tab/spaces settings
Plug 'tpope/vim-surround'               " `ysaw(` et al.
Plug 'tpope/vim-unimpaired'             " `]t` et al.
Plug 'tpope/vim-vinegar'                " directory listing via `-`
Plug 'vim-ruby/vim-ruby'                " bleeding-edge ruby runtime files
Plug 'vim-pandoc/vim-pandoc'            " :Pandoc
Plug 'vim-pandoc/vim-pandoc-syntax'     " Pandoc syntax for markdown, tex, et al.
Plug 'vim-utils/vim-man'                " inline manpages
if has('python3')
  function! DoRemote(arg)
    UpdateRemotePlugins
  endfunction
  " crazy good autocomplete (requires python3)
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
endif
call plug#end()

runtime macros/matchit.vim              " extra text objects

" https://github.com/neovim/neovim/issues/2048#issuecomment-78534227
if has('nvim')
  nmap <BS> <C-W>h
endif

set cursorcolumn                        " highlight current column
set cursorline                          " highlight current line
set expandtab                           " replace tabs with spaces
set ignorecase                          " case-insensitive search
set list                                " show whitespace
set listchars+=tab:¬\ ,trail:·,nbsp:+,eol:◊,extends:▶,precedes:◀,conceal:※
set number                              " show line numbers
set relativenumber                      " instead of absolute line number
set shiftwidth=2                        " two-space indent
set showcmd                             " show keymaps as I type
set smartcase                           " use with ignorecase
set smarttab                            " use shiftwidth for indentation

" themeing
set background=light
let g:solarized_visibility='low'        " fade listchars
colorscheme solarized

" omit vim-flagship hostname
let g:tabprefix=''

" run Neomake on write
autocmd! BufWritePost * Neomake

" vim-test keymaps
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
