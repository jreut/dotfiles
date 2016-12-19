let mapleader = " "

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'           " diff markers in gutter
Plug 'benekastah/neomake'               " compile, lint, etc.
Plug 'christoomey/vim-tmux-navigator'   " tmux compatability
Plug 'christoomey/vim-tmux-runner'      " send stuff to tmux
Plug 'elmcast/elm-vim'                  " elm-format support
" Plug 'jreut/vim-colors-jreut'           " my color scheme
Plug '~/code/vim-colors-jreut'
Plug 'janko-m/vim-test'                 " run test files
Plug 'junegunn/vim-peekaboo'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'            " support textobj-rubyblock
Plug 'ledger/vim-ledger'                " plain text accounting journals
Plug 'mtth/scratch.vim'                 " gs, gS, :Scratch for a scratch buffer
Plug 'pangloss/vim-javascript'          " JSX-compatible JS
Plug 'mxw/vim-jsx'                      " JSX syntax
Plug 'nelstrom/vim-textobj-rubyblock'   " `ar`, `ir` et al. text objects
Plug 'sheerun/vim-polyglot'             " lots of languages
Plug 'tpope/vim-bundler'                " :Bundle
Plug 'tpope/vim-commentary'             " `gcc` and friends
Plug 'tpope/vim-dispatch'               " async
Plug 'tpope/vim-endwise'                " block/method completions
Plug 'tpope/vim-eunuch'                 " :Rename, :Move and friends
" Plug 'tpope/vim-flagship'               " better tabline
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
Plug 'vim-pandoc/vim-pandoc'            " :Pandoc
Plug 'vim-pandoc/vim-pandoc-syntax'     " Pandoc syntax for markdown, tex, et al.
Plug 'vim-utils/vim-man'                " inline manpages
Plug 'guns/xterm-color-table.vim'
call plug#end()

runtime macros/matchit.vim              " extra text objects

" set cursorline                        " highlight current line
set expandtab                           " replace tabs with spaces
set fillchars=                          " status line, vertical separator fill characters
set hlsearch                            " highlight search matches
set ignorecase                          " case-insensitive search
set incsearch                           " search as I type
set laststatus=2                        " always show a status line
set listchars+=tab:¬\ ,trail:·,nbsp:+,eol:◊,extends:▶,precedes:◀,conceal:※
set list                              " show whitespace
set number                            " don't show line numbers
set relativenumber                    " off by default, but I turn it on when I do want numbers
set shiftwidth=2                        " two-space indent
set showcmd                             " show keymaps as I type
set showtabline=2                       " always show the tab line
set smartcase                           " use with ignorecase
set smarttab                            " use shiftwidth for indentation
set splitbelow                          " open horizontal splits below
set splitright                          " open vertical splits to the right
set statusline=                         " basic status line
set updatetime=200                      " faster faster faster!

" omit vim-flagship hostname
let g:tabprefix=''

" Use custom language packages for these filetypes
let g:polyglot_disabled = ['markdown', 'javascript', 'jsx']

" elm-vim
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
autocmd BufWritePost *.elm ElmMake

autocmd VimResized * :wincmd =          " rebalance on resize
autocmd! BufWritePost * Neomake         " run Neomake on write

" vim-test keymaps
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>a :TestSuite<CR>
nnoremap <silent> <leader>l :TestLast<CR>
nnoremap <silent> <leader>g :TestVisit<CR>

" vim~fzf keymaps
nnoremap <leader>p :Files<CR>
nnoremap <leader>b :Buffers<CR>

" GitGutter keymaps
nnoremap ]h :GitGutterNextHunk<CR>
nnoremap [h :GitGutterPrevHunk<CR>

" GitGutter config
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_modified_removed = '┃'

" use vim-tmux-runner only if we're in tmux
if $TMUX != ''
  let test#strategy = "vtr"
endif

" themeing
colorscheme jreut
set background=dark
