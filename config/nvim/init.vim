let mapleader = " "

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'           " diff markers in gutter
" Plug 'altercation/vim-colors-solarized' " color scheme
" Plug 'jnurmine/Zenburn'
Plug 'benekastah/neomake'               " compile, lint, etc.
Plug 'christoomey/vim-tmux-navigator'   " tmux compatability
Plug 'christoomey/vim-tmux-runner'      " send stuff to tmux
Plug 'janko-m/vim-test'                 " run test files
Plug 'junegunn/vim-peekaboo'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'            " support textobj-rubyblock
Plug 'ledger/vim-ledger'                " plain text accounting journals
Plug 'nelstrom/vim-textobj-rubyblock'   " `ar`, `ir` et al. text objects
" Plug 'pangloss/vim-javascript'          " improved JS syntax
" Plug 'rking/ag.vim'                     " :Ag
Plug 'sheerun/vim-polyglot'             " All the language packs
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
" Plug 'vim-ruby/vim-ruby'                " bleeding-edge ruby runtime files
Plug 'vim-pandoc/vim-pandoc'            " :Pandoc
Plug 'vim-pandoc/vim-pandoc-syntax'     " Pandoc syntax for markdown, tex, et al.
Plug 'vim-utils/vim-man'                " inline manpages
" if has('python3')
"   function! DoRemote(arg)
"     UpdateRemotePlugins
"   endfunction
"   " crazy good autocomplete (requires python3)
"   Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" endif
call plug#end()

runtime macros/matchit.vim              " extra text objects

" set cursorcolumn                        " highlight current column
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
colorscheme default
set background=dark
hi Normal ctermfg=White ctermbg=black
hi VertSplit ctermfg=bg ctermbg=bg cterm=NONE
hi StatusLine cterm=underline
hi StatusLineNC cterm=NONE ctermfg=NONE
hi TabLine cterm=underline ctermbg=NONE
hi TabLineFill cterm=underline
hi TabLineSel cterm=bold
hi CursorLine ctermbg=234 cterm=NONE
hi CursorColumn ctermbg=234 cterm=NONE
hi LineNr ctermfg=3 ctermbg=NONE
hi CursorlineNr ctermbg=234

" omit vim-flagship hostname
let g:tabprefix=''

autocmd VimResized * :wincmd =          " rebalance on resize
autocmd! BufWritePost * Neomake         " run Neomake on write

" neovim terminal mode keymaps
if has('nvim')
  :tnoremap <Esc><Esc> <C-\><C-n>:q<CR> " double-tap Escape to quit
endif

" vim-test keymaps
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>a :TestSuite<CR>
nnoremap <silent> <leader>l :TestLast<CR>
nnoremap <silent> <leader>g :TestVisit<CR>

" use vim-tmux-runner only if we're in tmux
if $TMUX != ''
  let test#strategy = "vtr"
endif
