hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'jreut'

hi Normal       cterm=NONE      ctermfg=252     ctermbg=Black

hi EndOfBuffer  cterm=NONE      ctermfg=bg      ctermbg=bg
hi! default link ColorColumn EndOfBuffer
hi NonText      cterm=NONE      ctermfg=238     ctermbg=NONE
hi VertSplit    cterm=NONE      ctermfg=59      ctermbg=NONE
hi StatusLine   cterm=bold      ctermfg=fg      ctermbg=NONE
hi! default link StatusLineNC NonText
hi TabLine      cterm=underline ctermfg=NONE    ctermbg=NONE
hi TabLineFill  cterm=underline ctermfg=NONE    ctermbg=NONE
hi TabLineSel   cterm=bold      ctermfg=NONE    ctermbg=NONE
hi CursorLine   cterm=NONE      ctermfg=NONE    ctermbg=59
hi CursorColumn cterm=NONE      ctermfg=NONE    ctermbg=59
hi LineNr       cterm=NONE      ctermfg=59      ctermbg=bg
hi CursorLineNr cterm=reverse   ctermfg=59      ctermbg=bg

hi Folded       cterm=NONE      ctermfg=fg      ctermbg=235
hi! default link FoldColumn CursorLineNr
hi! default link Conceal Folded

hi DiffAdd      cterm=NONE      ctermfg=NONE    ctermbg=64
hi DiffChange   cterm=NONE      ctermfg=NONE    ctermbg=96
hi DiffDelete   cterm=NONE      ctermfg=NONE    ctermbg=161
hi DiffText     cterm=bold      ctermfg=NONE    ctermbg=161

set bg=dark
set fillchars=
